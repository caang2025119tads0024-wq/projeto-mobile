import 'package:aula_01/features/chat/domain/entities/conversa.dart';
import 'package:aula_01/features/chat/infra/data/conversa_respository.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversaListBloc extends Bloc<ConversaListEvent, ConversaListState> {
  final ConversaRespository conversaRepo = ConversaRespository();

  ConversaListBloc() : super(ConversaListLoading()) {
    // on<ConversaListInitialize>((event, emit)async {
    //   List<Conversa> dados = conversaRepo.conversas;

    // }) 
  }
}