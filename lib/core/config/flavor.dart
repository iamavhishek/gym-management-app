enum AppFlavor {
  admin,
  trainer,
  member,
  all
  ;

  static AppFlavor fromString(String? value) {
    if (value == null || value.isEmpty) return AppFlavor.member;
    return AppFlavor.values.firstWhere(
      (e) => e.name == value.toLowerCase(),
      orElse: () => AppFlavor.member,
    );
  }
}
