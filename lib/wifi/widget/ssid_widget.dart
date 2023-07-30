import 'package:flutter/material.dart';

class SSIDWidget extends StatefulWidget{
  const SSIDWidget({super.key});
  @override
  State<SSIDWidget> createState() => _SSIDWidgetState();
}

class _SSIDWidgetState extends State<SSIDWidget>{
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 250,
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(), labelText: 'Enter SSID'),
        ),
      )
    );
  }
  void dispose(){
    controller.dispose();
    super.dispose();
  }
}
