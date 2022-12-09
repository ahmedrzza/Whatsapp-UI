import 'package:flutter/material.dart';
import 'package:whatsapp/call_screen.dart';

class comunity_screen extends StatefulWidget {
  const comunity_screen({super.key});

  @override
  State<comunity_screen> createState() => _comunity_screenState();
}

class _comunity_screenState extends State<comunity_screen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {});
            },
            child: Icon(Icons.people_alt),
          ),
        ],
      ),
    );
  }
}
