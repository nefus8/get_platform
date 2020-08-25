library get_platform;

import 'dart:io';

class GetPlatform {
  /// We check all platforms with the dart:io class but if it's web, it doesn't work so we catch the error...
  static bool isIos() {
    try {
      /// we try the iOS platform
      if (Platform.isIOS) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static bool isAndroid() {
    try {
      /// we try the android platform
      if (Platform.isAndroid) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static bool isFuchsia() {
    try {
      /// we try the Fuchsia platform
      if (Platform.isFuchsia) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static bool isLinux() {
    try {
      /// we try the Linux platform
      if (Platform.isLinux) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static bool isMacOs() {
    try {
      /// we try the MacOs platform
      if (Platform.isMacOS) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static bool isWindows() {
    try {
      /// we try the Windows platform
      if (Platform.isWindows) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static bool isWeb() {
    try {
      /// we try the web platform
      if (Platform.isIOS ||
          Platform.isAndroid ||
          Platform.isWindows ||
          Platform.isMacOS ||
          Platform.isLinux ||
          Platform.isFuchsia) {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      return true;
    }
  }

  /// This function return the name of the os
  static String getPlatform() {
    if (isIos()) {
      return 'iOS';
    } else if (isAndroid()) {
      return 'android';
    } else if (isMacOs()) {
      return 'macOS';
    } else if (isLinux()) {
      return 'linux';
    } else if (isWindows()) {
      return 'windows';
    } else if (isWeb()) {
      return 'web';
    } else if (isFuchsia()) {
      return 'fuchsia';
    } else {
      return null;
    }
  }
}
