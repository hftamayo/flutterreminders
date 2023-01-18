import 'package:flutter/material.dart';

class AddGroupScreen extends StatefulWidget {
  const AddGroupScreen({super.key});

  @override
  State<AddGroupScreen> createState() => _AddGroupScreenState();
}

class _AddGroupScreenState extends State<AddGroupScreen> {
  Color selectedColor = Colors.primaries.first;
  final textController = TextEditingController();
  String? errorMessage;

  void _onSave() {}

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: SizedBox(
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: []),
      ),
    );
  }
}
