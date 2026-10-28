import 'package:aula_01/features/chat/domain/entities/conversa.dart';
import 'package:aula_01/features/chat/infra/data/conversa_respository.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatListPage extends StatelessWidget {
  final ConversaRespository repo = ConversaRespository();
  ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ConversaListBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('Conversas')),
        body: ListView.builder(
          itemCount: repo.conversas.length,
          itemBuilder: (BuildContext context, int i) {
            Conversa conversa = repo.conversas[i];
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
                  conversa.naoLidas > 0
                      ? Badge(label: Text('${conversa.naoLidas}'))
                      : SizedBox(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
