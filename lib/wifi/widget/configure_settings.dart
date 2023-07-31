import 'package:flutter/material.dart';
import 'body_widget.dart';
import 'qr_generate.dart';
import 'wpa2_toggle.dart';
import 'ssid_widget.dart';
import 'password_widget.dart';

class ConfigureWiFiWidget extends StatelessWidget {
  const ConfigureWiFiWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TitleText()),
      body: BodySettings(),
      floatingActionButton: QRGenerate(),
    );
  }
}
