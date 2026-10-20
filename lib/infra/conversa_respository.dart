
import 'package:aula_01/domain/conversa.dart';

class ConversaRespository {
  // BD
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
      naoLidas: 0,
      inicial: 'WM',
      ),
  ];
}