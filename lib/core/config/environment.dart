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
        return 'http://localhost:3000/api';
      case AppEnvironment.staging:
        return 'http://localhost:3000/api';
      case AppEnvironment.prod:
        return 'http://localhost:3000/api';
    }
  }
}
