enum Flavor {
  development,
  staging,
  production,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'Test Project Dev';
      case Flavor.staging:
        return 'Test Project Staging';
      case Flavor.production:
        return 'Test Project';
    }
  }

  static String get envFile {
    switch (appFlavor) {
      case Flavor.development:
        return '.env.development';
      case Flavor.staging:
        return '.env.staging';
      case Flavor.production:
        return '.env.production';
    }
  }

}
