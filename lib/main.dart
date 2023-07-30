import 'package:flutter/material.dart';
import 'qr/qr_generator.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'NetMan',
     theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          brightness: Brightness.light,
          useMaterial3: true,
        ),
     debugShowCheckedModeBanner: false,
     home: const ConfigureWiFi(),
   );
 }
}

//Configuration of Wi-Fi

class ConfigureSettings extends StatefulWidget{
  const ConfigureSettings({super.key});
}

class ConfigureWiFi extends StatelessWidget{
  const ConfigureWiFi({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
        title: const Text('Configure Wi-Fi')),
        body: const Center(
            child: SizedBox(width: 250,
            child: TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter SSID'),
          ),
        ),
      ),
    );
  }
}


void main(){
  runApp(const App());
}
