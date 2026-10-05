import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Conversas')),
      body: ListView(
        children: [
          ListTile(
            title: Text('José Eduardo'),
            subtitle: Text('Aula maravilhosa!'),
            leading: CircleAvatar(
              child: Text('JE'),
              backgroundColor: Colors.pinkAccent,
              foregroundColor: Colors.white,
              ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('7:00'),
                Badge(
                  label: Text('1'),
                  backgroundColor: Colors.green,
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}