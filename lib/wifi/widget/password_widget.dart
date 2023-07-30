import 'package:flutter/material.dart';

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
