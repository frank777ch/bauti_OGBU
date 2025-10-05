import 'package:flutter/material.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import '../services/camera_permission_service.dart';
import 'package:permission_handler/permission_handler.dart';

class Section1 extends StatefulWidget {
  const Section1({super.key});

  @override
  State<Section1> createState() => _Section1State();
}

class _Section1State extends State<Section1> {
  String mensaje = "Esperando permiso...";
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  bool permisoConcedido = false;

  @override
  void initState() {
    super.initState();
    verificarPermiso();
  }

  Future<void> verificarPermiso() async {
    final estado = await CameraPermissionService.status();

    if (estado.isGranted) {
      setState(() {
        permisoConcedido = true;
        mensaje = "Permiso concedido ✅";
      });
    } else {
      final concedido = await CameraPermissionService.request();

      if (concedido) {
        setState(() {
          permisoConcedido = true;
          mensaje = "Permiso concedido después de pedirlo ✅";
        });
      } else {
        setState(() {
          permisoConcedido = false;
          mensaje = "Permiso denegado ❌, abrir ajustes...";
        });
        await CameraPermissionService.openAppSettingsIfNeeded();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Center(
        child: permisoConcedido
            ? QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              )
            : Text(
                mensaje,
                style: const TextStyle(fontSize: 18),
              ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      print("Código QR detectado: ${scanData.code}");
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}