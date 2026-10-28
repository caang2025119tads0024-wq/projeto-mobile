import 'package:aula_01/features/chat/domain/entities/conversa.dart';

sealed class ConversaListState {}

class ConversaListLoading extends ConversaListState{}

class ConversaListSuccess extends ConversaListState {
  final List <Conversa> conversas;
  ConversaListSuccess({required this.conversas});
}

class ConversalistFailure extends ConversaListState {
  final String msg;
  ConversalistFailure({required this.msg});
}