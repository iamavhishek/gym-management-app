class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';

  // Admin routes
  static const String adminDashboard = '/admin/dashboard';
  static const String adminMembers = '/admin/members';
  static const String adminMembersAdd = '/admin/members/add';
  static const String adminTrainers = '/admin/trainers';
  static const String adminTrainersAdd = '/admin/trainers/add';
  static const String adminPayments = '/admin/payments';
  static const String adminReports = '/admin/reports';
  static const String adminClasses = '/admin/classes';
  static const String adminPlans = '/admin/plans';

  // Member routes
  static const String memberDashboard = '/member/dashboard';
  static const String memberWorkouts = '/member/workouts';
  static const String memberClasses = '/member/classes';
  static const String memberAttendance = '/member/attendance';
  static const String memberProfile = '/member/profile';

  // Trainer routes
  static const String trainerDashboard = '/trainer/dashboard';
  static const String trainerClients = '/trainer/clients';
  static const String trainerWorkouts = '/trainer/workouts';
  static const String trainerWorkoutsAdd = '/trainer/workouts/add';
  static const String trainerSchedule = '/trainer/schedule';

  // Common routes
  static const String qrScanner = '/qr-scanner';
  static const String notifications = '/notifications';
}
