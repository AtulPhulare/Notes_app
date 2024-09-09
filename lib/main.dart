import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'HomePage.dart';
void main() async {
  await Hive.initFlutter(); // Initialize Hive
  await Hive.openBox('notes'); // Open a Hive box for storing notes
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home:  const NotesHomePage(),
    );
  }
}
