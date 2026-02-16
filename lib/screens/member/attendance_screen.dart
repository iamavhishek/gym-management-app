import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/attendance/attendance_bloc.dart';
import 'package:gym_management_app/blocs/attendance/attendance_event.dart';
import 'package:gym_management_app/blocs/attendance/attendance_state.dart';
import 'package:gym_management_app/models/attendance_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  String? _memberId;

  @override
  void initState() {
    super.initState();
    _loadMemberId();
  }

  Future<void> _loadMemberId() async {
    final prefs = await SharedPreferences.getInstance();
    _memberId = prefs.getString('user_id');
    if (_memberId != null && mounted) {
      context.read<AttendanceBloc>().add(
        AttendanceEvent.fetchHistory(_memberId!),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance History')),
      body: BlocConsumer<AttendanceBloc, AttendanceState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) => ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message))),
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: $message'),
                backgroundColor: Colors.red,
              ),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (history) => _buildBody(history),
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _checkIn,
        icon: const Icon(Icons.qr_code_scanner),
        label: const Text('Check In'),
      ),
    );
  }

  Widget _buildBody(List<AttendanceModel> attendance) {
    return Column(
      children: [
        _buildSummaryCard(attendance),
        Expanded(
          child: attendance.isEmpty
              ? const Center(child: Text('No attendance records'))
              : _buildAttendanceList(attendance),
        ),
      ],
    );
  }

  Widget _buildSummaryCard(List<AttendanceModel> attendance) {
    final thisMonth = attendance.where((a) {
      final now = DateTime.now();
      return a.checkInTime.month == now.month && a.checkInTime.year == now.year;
    }).length;

    final avgDuration = attendance.isEmpty
        ? 0
        : attendance
                  .where((a) => a.duration != null)
                  .fold<int>(0, (sum, a) => sum + (a.duration ?? 0)) ~/
              (attendance.where((a) => a.duration != null).isEmpty
                  ? 1
                  : attendance.where((a) => a.duration != null).length);

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildStatColumn('This Month', '$thisMonth', 'visits'),
            _buildStatColumn('Avg Duration', '$avgDuration', 'mins'),
            _buildStatColumn('Total', '${attendance.length}', 'all time'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String title, String value, String subtitle) {
    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.bodySmall),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }

  Widget _buildAttendanceList(List<AttendanceModel> attendance) {
    // Group by date
    final grouped = <String, List<AttendanceModel>>{};
    for (final a in attendance) {
      final key =
          '${a.checkInTime.day}/${a.checkInTime.month}/${a.checkInTime.year}';
      grouped.putIfAbsent(key, () => []).add(a);
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: grouped.length,
      itemBuilder: (context, index) {
        final date = grouped.keys.elementAt(index);
        final records = grouped[date]!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(date, style: Theme.of(context).textTheme.titleMedium),
            ),
            ...records.map((record) => _buildAttendanceCard(record)),
          ],
        );
      },
    );
  }

  Widget _buildAttendanceCard(AttendanceModel record) {
    final checkIn =
        '${record.checkInTime.hour.toString().padLeft(2, '0')}:${record.checkInTime.minute.toString().padLeft(2, '0')}';
    final checkOut = record.checkOutTime != null
        ? '${record.checkOutTime!.hour.toString().padLeft(2, '0')}:${record.checkOutTime!.minute.toString().padLeft(2, '0')}'
        : 'In Progress';

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(
          record.method == 'QR' ? Icons.qr_code : Icons.touch_app,
          color: Colors.blue,
        ),
        title: Text('$checkIn - $checkOut'),
        subtitle: Text('Duration: ${record.duration ?? 'In Progress'} mins'),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: record.status == 'present'
                ? Colors.green.withValues(alpha: 0.2)
                : Colors.orange.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            record.status.toUpperCase(),
            style: TextStyle(
              color: record.status == 'present' ? Colors.green : Colors.orange,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }

  void _checkIn() {
    if (_memberId != null) {
      context.read<AttendanceBloc>().add(
        AttendanceEvent.checkIn(_memberId!, 'MANUAL'),
      );
    }
  }
}
