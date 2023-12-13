import 'package:flutter/material.dart';
import '../password/password_generate.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ConfigureWiFi extends StatefulWidget {
  const ConfigureWiFi({super.key});
  @override
  State<ConfigureWiFi> createState() => _ConfigureWiFi();
}

class _ConfigureWiFi extends State<ConfigureWiFi> {
  var ssidController = TextEditingController();
  var password = passwordGenerate(length: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configure Wi-Fi')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextField(
                    controller: ssidController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Enter SSID'),
                  ),
                )),
            const PasswordWidget(),
            const WPA2Toggle(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          password = passwordGenerate();
          if (ssidController.text == '') {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('SSID can\'t be empty'),
              duration: Duration(seconds: 1),
              backgroundColor: Colors.white70,
            ));
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Wi-fi Credentials'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('SSID: ${ssidController.text}'),
                        Text('WPA-2 PSK: $password'),
                        SizedBox(
                            width: 200,
                            height: 200,
                            child: QrImageView(
                              data:
                                  'WIFI:T:WPA2;S:${ssidController.text};P:$password;;',
                              version: QrVersions.auto,
                              size: 50,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            )),
                      ],
                    ),
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
          }
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.qr_code),
      ),
    );
  }

  @override
  void dispose() {
    ssidController.dispose();
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
            onChanged: (double value) {
              setState(() {
                _value = value;
              });
            }));
  }
}

class WPA2Toggle extends StatefulWidget {
  const WPA2Toggle({super.key});
  @override
  State<WPA2Toggle> createState() => _WPA2ToggleState();
}

class _WPA2ToggleState extends State<WPA2Toggle> {
  bool _wpa2 = true;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
        title: const Text('WPA 2'),
        value: _wpa2,
        onChanged: (bool value) {
          setState(() {
            _wpa2 = value;
          });
        });
  }
}
