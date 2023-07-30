import 'package:flutter/material.dart';

class QRGenerate extends StatefulWidget {
  const QRGenerate({super.key});
  @override
  State<QRGenerate> createState() => _QRGenerateState();
}

class _QRGenerateState extends State<QRGenerate> {
  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      child: Icon(Icons.qr_code_2),
    );
  }
}
