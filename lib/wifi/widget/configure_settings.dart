import 'package:flutter/material.dart';

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

class QRGenerate extends StatefulWidget {
  const QRGenerate({super.key});
  @override
  State<QRGenerate> createState() => _QRGenerateState();
}

class _QRGenerateState extends State<QRGenerate> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Wi-fi Credentials'),
              content: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('SSID: Home-Wifi'),
                  Text('WPA-2 PSK: 63GDieb^27!@&hdUWI18'),
                  Image(image: AssetImage('assets/images/qr.png')),
                ],
              ),
              actions: [
                TextButton(
                  child: const Text('Close'),
                  onPressed: () {
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

class SSIDWidget extends StatefulWidget{
  const SSIDWidget({super.key});
  @override
  State<SSIDWidget> createState() => _SSIDWidgetState();
}

class _SSIDWidgetState extends State<SSIDWidget>{
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context){
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: SizedBox(
        width: 250,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(), labelText: 'Enter SSID'),
        ),
      )
    );
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
}

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({super.key});
  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  double _value = 20;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Slider(
        min: 20,
        max: 50,
        divisions: 6,
        value: _value,
        label: _value.round().toString(),
        onChanged: (double value){
          setState((){
              _value = value;
              }
            );
          }
        )
      );
    }
}

class WPA2Toggle extends StatefulWidget{
  const WPA2Toggle({super.key});
  @override
  State<WPA2Toggle> createState() => _WPA2ToggleState();
}

class _WPA2ToggleState extends State<WPA2Toggle>{
  bool _wpa2 = true;
  @override
  Widget build(BuildContext context){
    return SwitchListTile(
      title: const Text('WPA 2'),
      value: _wpa2,
      onChanged: (bool value) {
       setState(() {
           _wpa2 = value;
         }
       );
      }
    );
  }
}

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
