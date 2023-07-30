import 'package:flutter/material.dart';

class ConfigureWiFiWidget extends StatelessWidget{
  const ConfigureWiFiWidget({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title: const TitleText()),
      body: const BodySettings(),
    );
  }
}

class TitleText extends StatelessWidget{
  const TitleText({super.key});
  @override
  Widget build(BuildContext context){
    return const Text('Configure Wi-Fi');
  }
}


class BodySettings extends StatelessWidget{
  const BodySettings({super.key});
  @override
  Widget build(BuildContext context){
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter SSID'
              ),
            ),
          ),
          SizedBox(
            width: 250,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Password',
              ),
            ),
          ),
          WPA2Toggle(),
        ],
      ),
    );
  }
}

class WPA2Toggle extends StatefulWidget{
  const WPA2Toggle({super.key});
  @override
  State<WPA2Toggle> createState() => _WPA2ToggleState();
}

class _WPA2ToggleState extends State<WPA2Toggle>{
  bool _wpa2 = false;
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
