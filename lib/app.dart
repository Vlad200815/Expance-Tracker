import 'package:flutter/material.dart';
import 'package:ttd_practice/app_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: Colors.grey.shade100,
          onBackground: Colors.black,
          primary: const Color(0XFF00B3E7),
          secondary: const Color(0XFFE064F7),
          tertiary: const Color(
            0xFFFF8D6C,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyAppView(),
    );
  }
}
