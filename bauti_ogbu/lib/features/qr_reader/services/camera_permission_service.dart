import 'package:permission_handler/permission_handler.dart';

class CameraPermissionService {

  static Future<PermissionStatus> status() async {
    return Permission.camera.status;
  }

  static Future<bool> request() async {
    final current = await Permission.camera.status;

    if (current.isGranted) return true;

    final result = await Permission.camera.request();

    return result.isGranted;
  }

  static Future<bool> openAppSettingsIfNeeded() async {
    return await openAppSettings();
  }
}