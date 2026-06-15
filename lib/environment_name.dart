class Environment {
  static const String _flavor =
      String.fromEnvironment('FLAVOR', defaultValue: 'development');

  static const String dev = '.env.development';
  static const String staging = '.env.staging';
  static const String prod = '.env.production';

  static String get current {
    switch (_flavor) {
      case 'production':
        return prod;
      case 'staging':
        return staging;
      default:
        return dev;
    }
  }
}
