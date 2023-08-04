import 'package:flutter/material.dart';
import 'body_widget.dart';
import 'qr_generate.dart';

class ConfigureWiFiWidget extends StatelessWidget {
  const ConfigureWiFiWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TitleText()),
      body: const BodySettings(),
      floatingActionButton: const QRGenerate(),
    );
  }
}
