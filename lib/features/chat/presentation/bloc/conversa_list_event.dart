import 'package:aula_01/features/chat/domain/entities/conversa.dart';

sealed class ConversaListEvent {}

class ConversaListInitialize extends ConversaListEvent {}

class ConversaDuplicaConversa extends ConversaListEvent {
  final Conversa conversa;
  ConversaDuplicaConversa({required this.conversa});
}
