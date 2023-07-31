import 'package:flutter/material.dart';
import 'ssid_widget.dart';

class QRGenerate extends StatefulWidget {
  const QRGenerate({super.key});
  @override
  State<QRGenerate> createState() => _QRGenerateState();
}

class _QRGenerateState extends State<QRGenerate> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: const Text('Wi-fi Credentials'),
              content: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('SSID: Home-Wifi'),
                  Text('WPA-2 PSK: 63GDieb^27!@&hdUWI18'),
                  Image(image: AssetImage('assets/images/qr.png')),
                  ],
                ),
                actions: [
              TextButton(
                child: const Text('Close'),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ],
              );
            },
          );
        },
  backgroundColor: Colors.deepPurple,
  child: const Icon(Icons.qr_code_2),
    );
  }
}
