import 'package:flutter/material.dart';
import 'package:flutterreminder/ui/groups_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reminders',
      theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.w900),
      )),
      home: const GroupsScreen(),
    );
  }
}
