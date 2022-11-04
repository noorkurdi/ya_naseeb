import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ya_naseeb/firebase_options.dart';
import 'package:ya_naseeb/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: '',
      appId: '1:594632936898:web:ce63524659fcbad339da5b',
      messagingSenderId: '594632936898',
      projectId: 'yanaseeb-2d773',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
