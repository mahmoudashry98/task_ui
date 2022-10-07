import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/config/routes/app_routes.dart';

void main() {
  runApp( DevicePreview(builder: ((context) => const MyApp()),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
    );
  }
}
