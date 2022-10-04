import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_challenge/challange1/view/pricipal_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        title: 'Payment UI',
        home: const PricipalScreen(),
      ),
    );
  }
}
