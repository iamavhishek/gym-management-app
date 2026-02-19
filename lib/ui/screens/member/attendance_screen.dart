import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/attendance/attendance_bloc.dart';
import 'package:gym_management_app/core/blocs/attendance/attendance_event.dart';
import 'package:gym_management_app/core/blocs/attendance/attendance_state.dart';
import 'package:gym_management_app/core/models/attendance_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';
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
          if (state is AttendanceSuccess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is AttendanceError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: ${state.message}'),
                backgroundColor: const Color(0xFFEF4444),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is AttendanceLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AttendanceLoaded) {
            return _buildBody(state.history);
          } else if (state is AttendanceError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
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
              ? Center(
                  child: Text(
                    'No attendance records',
                    style: GoogleFonts.inter(
                      color: AppTheme.textSecondary,
                      fontSize: 14,
                    ),
                  ),
                )
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

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatColumn('This Month', '$thisMonth', 'visits'),
          Container(width: 1, height: 40, color: AppTheme.outlineLight),
          _buildStatColumn('Avg Duration', '$avgDuration', 'mins'),
          Container(width: 1, height: 40, color: AppTheme.outlineLight),
          _buildStatColumn('Total', '${attendance.length}', 'all time'),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String title, String value, String subtitle) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
            fontSize: 11,
            color: AppTheme.textSecondary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: GoogleFonts.outfit(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryDark,
          ),
        ),
        Text(
          subtitle,
          style: GoogleFonts.inter(
            fontSize: 11,
            color: AppTheme.textSecondary,
          ),
        ),
      ],
    );
  }

  Widget _buildAttendanceList(List<AttendanceModel> attendance) {
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
              child: Text(
                date,
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppTheme.textMain,
                ),
              ),
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

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: AppTheme.premiumDecoration(),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF10B981).withOpacity(0.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              record.method == 'QR'
                  ? Icons.qr_code_rounded
                  : Icons.touch_app_rounded,
              color: const Color(0xFF10B981),
              size: 22,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$checkIn - $checkOut',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: AppTheme.textMain,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Duration: ${record.duration ?? 'In Progress'} mins',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: record.status == 'present'
                  ? const Color(0xFF10B981).withOpacity(0.1)
                  : const Color(0xFFF59E0B).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              record.status.toUpperCase(),
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: record.status == 'present'
                    ? const Color(0xFF10B981)
                    : const Color(0xFFF59E0B),
              ),
            ),
          ),
        ],
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
