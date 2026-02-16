import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/attendance/attendance_bloc.dart';
import 'package:gym_management_app/blocs/attendance/attendance_event.dart';
import 'package:gym_management_app/blocs/attendance/attendance_state.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScannerScreen extends StatefulWidget {
  const QrScannerScreen({super.key});

  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  final MobileScannerController _controller = MobileScannerController();
  String? _lastScannedCode;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AttendanceBloc, AttendanceState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (message) => _showSuccessDialog(message),
          error: (message) => _showErrorDialog(message),
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('QR Check-in'),
          actions: [
            IconButton(
              icon: ValueListenableBuilder(
                valueListenable: _controller,
                builder: (context, state, child) {
                  return Icon(
                    state.torchState == TorchState.on
                        ? Icons.flash_on
                        : Icons.flash_off,
                  );
                },
              ),
              onPressed: () => _controller.toggleTorch(),
            ),
            IconButton(
              icon: const Icon(Icons.flip_camera_ios),
              onPressed: () => _controller.switchCamera(),
            ),
          ],
        ),
        body: Stack(
          children: [
            MobileScanner(controller: _controller, onDetect: _onDetect),
            Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Scan member QR code',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            BlocBuilder<AttendanceBloc, AttendanceState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => Container(
                    color: Colors.black54,
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(color: Colors.white),
                          SizedBox(height: 16),
                          Text(
                            'Processing...',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onDetect(BarcodeCapture capture) async {
    final barcode = capture.barcodes.firstOrNull;
    if (barcode == null || barcode.rawValue == null) return;
    if (barcode.rawValue == _lastScannedCode) return;

    _lastScannedCode = barcode.rawValue;

    context.read<AttendanceBloc>().add(
      AttendanceEvent.scanQr(barcode.rawValue!),
    );

    // Reset after delay to allow scanning again
    await Future.delayed(const Duration(seconds: 3));
    _lastScannedCode = null;
  }

  void _showSuccessDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.check_circle, color: Colors.green, size: 64),
        title: const Text('Success!'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Continue Scanning'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }

  void _showErrorDialog(String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 64),
        title: const Text('Check-in Failed'),
        content: Text(error),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Try Again'),
          ),
        ],
      ),
    );
  }
}
