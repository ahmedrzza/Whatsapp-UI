import 'package:flutter/material.dart';
import 'package:whatsapp/call_screen.dart';
import 'package:whatsapp/comunity_screen.dart';
import 'package:whatsapp/status_screen.dart';

class homescreen extends StatefulWidget {
  static const String id = 'homescreen';
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text(
              'Whatsapp',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            actions: [
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.search),
              PopupMenuButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                        const PopupMenuItem(value: 1, child: Text('New group')),
                        const PopupMenuItem(
                            value: 2, child: Text('New broadcast')),
                        const PopupMenuItem(
                            value: 3, child: Text('linked devices')),
                        const PopupMenuItem(
                            value: 4, child: Text('Starred messages')),
                        const PopupMenuItem(value: 5, child: Text('Setting')),
                      ]),
            ],
            bottom: const TabBar(tabs: [
              Icon(Icons.people),
              Text('Chat'),
              Text('Status'),
              Text('Calls'),
            ]),
          ),
          body: SafeArea(
            child: TabBarView(children: [
              // comunity screen
              const comunity_screen(),
              // chats
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return customchat(
                        'Ahmed', "how are u", '11:18am', Colors.black);
                  }),
              // status
              const status_screen(),
              // call
              const Callscreen()
            ]),
          ),
        ));
  }
}

customchat(Name, msg, time, Color) {
  return ListTile(
      tileColor: Colors.white,
      leading: const CircleAvatar(
        backgroundColor: Colors.black,
      ),
      title: Text('$Name'),
      subtitle: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('$msg.........'),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.done_all,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
      trailing: Text(time));
}
