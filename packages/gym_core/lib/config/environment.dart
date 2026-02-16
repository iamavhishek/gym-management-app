enum AppEnvironment {
  dev,
  staging,
  prod
  ;

  static AppEnvironment fromString(String? value) {
    return AppEnvironment.values.firstWhere(
      (e) => e.name == value?.toLowerCase(),
      orElse: () => AppEnvironment.dev,
    );
  }

  String get baseUrl {
    switch (this) {
      case AppEnvironment.dev:
        return 'https://dev-api.gym.com';
      case AppEnvironment.staging:
        return 'https://staging-api.gym.com';
      case AppEnvironment.prod:
        return 'https://api.gym.com';
    }
  }
}
