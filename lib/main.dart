import 'package:flutter/material.dart';
import 'wifi/configure_settings.dart';

// TODO(grittypuffy): Refactor codebase
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetMan',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const ConfigureWiFi(),
    );
  }
}

void main() => runApp(const App());
