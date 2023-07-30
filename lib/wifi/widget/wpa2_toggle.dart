import 'package:flutter/material.dart';

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
