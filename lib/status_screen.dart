import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import ''; 'dart:core-patch/errors_patch.dart';

class status_screen extends StatelessWidget {
  static const String id = 'statusscreen';
  const status_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mystatus(
            'My Status',
            'Tab to add status update',
          ),
          update(),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),
          otherstatus('Ahmed', 'Today, 9:27 PM'),

          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Text('Recent updates'),
          // // ),
          // SizedBox(
          //   width: 100,
          // ),
          // Text('Recent updates'),
        ],
      ),
    );
  }
}

Mystatus(
  Name,
  msg,
) {
  return ListTile(
    tileColor: Colors.white,
    leading: Stack(
      children: const [
        CircleAvatar(
          backgroundColor: Colors.orange,
          radius: 30,
        ),
        Positioned(
            top: 30,
            left: 37,
            child: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 10,
              child: Icon(
                Icons.add,
                size: 20,
                color: Colors.white,
              ),
            ))
      ],
    ),
    title: Text('$Name'),
    subtitle: SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text('$msg'),
          )
        ],
      ),
    ),
    // trailing:const Positioned(
    //   child: Align(
    //     alignment: Alignment.bottomLeft,
    //     child: CircleAvatar(
    //         radius: 10, backgroundColor: Colors.teal, child: Icon(Icons.add)),
    //   ),
    // ),
    // trailing: Row(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   children: [
    //     Positioned(
    //         top: 40,
    //         left: 40,
    //         child: CircleAvatar(
    //           radius: 5,
    //           child: Icon(
    //             Icons.add,
    //             size: 5,
    //           ),
    //         ))
    //   ],
    // )
  );
}

update() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text('Recent updates'),
      )
    ],
  );
}

otherstatus(
  Name,
  time,
) {
  return ListTile(
    tileColor: Colors.white,
    leading: const CircleAvatar(
      backgroundColor: Colors.orange,
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
  );
}
