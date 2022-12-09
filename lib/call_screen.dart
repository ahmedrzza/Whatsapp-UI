import 'package:flutter/material.dart';

class Callscreen extends StatefulWidget {
  static const String id = 'callscreen';
  const Callscreen({super.key});

  @override
  State<Callscreen> createState() => _CallscreenState();
}

class _CallscreenState extends State<Callscreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          calllink('Create call link', 'Share a link for your WhatsApp call'),
          Recent(),
          const SizedBox(
            height: 10,
          ),
          calls('shahzad', 'November 28, 12:28 PM'),
          calls('Raza', 'November 28, 12:28 PM'),
          calls('Shahzad', 'November 28, 12:28 PM'),
          calls('Hassed', 'November 28, 12:28 PM'),
          calls('shahzad', 'November 28, 12:28 PM'),
          calls('Mairaj', 'November 28, 12:28 PM'),
          calls('Anwar', 'November 28, 12:28 PM'),
          calls('Papa', 'November 28, 12:28 PM'),
          calls('shahzad', 'November 28, 12:28 PM'),
          calls('Papa', 'November 28, 12:28 PM'),
          calls('Asif', 'November 28, 12:28 PM'),
          calls('Papa', 'November 28, 12:28 PM'),
          calls('shahzad', 'November 28, 12:28 PM'),
          calls('Papa', 'November 28, 12:28 PM'),
          calls('shahzad', 'November 28, 12:28 PM'),
          calls('Papa', 'November 28, 12:28 PM'),
          calls('shahzad', 'November 28, 12:28 PM'),
          calls('Papa', 'November 28, 12:28 PM'),
          calls('shahzad', 'November 28, 12:28 PM'),
          calls('Papa', 'November 28, 12:28 PM'),
        ],
      ),
    );
  }
}

calllink(
  Name,
  time,
) {
  return ListTile(
    tileColor: Colors.white,
    leading: Stack(
      children: const [
        CircleAvatar(
          backgroundColor: Colors.teal,
          radius: 30,
          child: Icon(
            Icons.link,
            size: 35,
            color: Colors.white,
          ),
        ),
      ],
    ),
    title: Text('$Name'),
    subtitle: SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text('$time'),
          ),
        ],
      ),
    ),
  );
}

Recent() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text('Recent'),
      )
    ],
  );
}

calls(
  Name,
  time,
) {
  return ListTile(
    tileColor: Colors.white,
    leading: const CircleAvatar(
      backgroundColor: Colors.green,
      radius: 25,
    ),
    title: Text('$Name'),
    subtitle: SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text('$time'),
          ),
        ],
      ),
    ),
    trailing: const Icon(Icons.call_rounded),
  );
}
