import 'package:flutter/material.dart';
import 'package:watsap_with_flutter/views/loginView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        // Define your light mode colors here
        primaryColor: Colors.blue,
        accentColor: Colors.green,
        useMaterial3: true,
        // Add more properties as needed
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home:LoginView(),
    );
  }
}

