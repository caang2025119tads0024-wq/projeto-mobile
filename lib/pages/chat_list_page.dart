import 'package:aula_01/domain/conversa.dart';
import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  List<Conversa> conversas = [
    Conversa(
      contato: 'Ewerton Costa', 
      ultimaMsg: 'Não vou reprová-los', 
      horario: '16:20', 
      naoLidas: 1,
      inicial: 'EC',
      ),
    Conversa(
      contato: 'Warlles Machado', 
      ultimaMsg: 'Não vai escapar ninguém', 
      horario: '16:30', 
      naoLidas: 10,
      inicial: 'WM',
      ),
  ];
  ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Conversas')),
      body: ListView.builder(
        itemCount: conversas.length,
        itemBuilder: (BuildContext context, int i) {
          Conversa conversa = conversas[i];
          return ListTile(
            title: Text(conversa.contato),
            subtitle: Text(conversa.ultimaMsg),
            leading: CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              foregroundColor: Colors.white,
              child: Text(conversa.inicial),
              ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(conversa.horario),
                Badge(
                  label: Text('${conversa.naoLidas}'),
                  backgroundColor: Colors.green,
                ),
              ],
            ),
          );
        },
        ),
    );
  }
}