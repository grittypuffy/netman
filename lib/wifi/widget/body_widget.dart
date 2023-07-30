import 'package:flutter/material.dart';
import 'wpa2_toggle.dart';
import 'ssid_widget.dart';
import 'password_widget.dart';
import 'qr_generate.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text('Configure Wi-Fi');
  }
}

class BodySettings extends StatelessWidget {
  const BodySettings({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SSIDWidget(),
          PasswordWidget(),
          WPA2Toggle(),
        ],
      ),
    );
  }
}
