class AppConstants {
  // API Configuration
  static const String apiBaseUrl = 'http://localhost:3000/api';
  // Use 'http://10.0.2.2:3000/api' for Android Emulator
  // Use your machine's IP for physical device testing

  // Currency (Nepali Rupee)
  static const String currencySymbol = 'रु';

  // Pagination
  static const int defaultPageSize = 20;

  // Local Storage Keys
  static const String authTokenKey = 'auth_token';
  static const String userRoleKey = 'user_role';
  static const String userIdKey = 'user_id';

  // User Roles
  static const String roleAdmin = 'admin';
  static const String roleTrainer = 'trainer';
  static const String roleMember = 'member';

  // Attendance Methods
  static const String attendanceQr = 'QR';
  static const String attendanceManual = 'MANUAL';
  static const String attendanceRfid = 'RFID';

  // Payment Methods
  static const String paymentCash = 'cash';
  static const String paymentBankTransfer = 'bank_transfer';

  // Payment Statuses
  static const String paymentPending =
      'pending'; // waiting for admin verification
  static const String paymentCompleted = 'completed'; // admin verified
  static const String paymentRejected = 'rejected'; // admin rejected

  // Class Types
  static const List<String> classTypes = [
    'yoga',
    'zumba',
    'boxing',
    'crossfit',
    'pilates',
  ];
}
