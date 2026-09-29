import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Minha Aula'),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Aula de Hoje', style: TextStyle(fontSize: 18),),
                    SizedBox(height: 12,),
                    Text('Widgets e Composição', style: TextStyle(fontSize: 16),),
                    SizedBox(height: 12,),
                    Text('Aprendendo a construir interfaces com Flutter', style: TextStyle(fontSize: 14),),
                    SizedBox(height: 12,),
                    ElevatedButton(onPressed: () {}, child: Text('Começar aqui')),
                    SizedBox(height: 12,),
                  ],
                )
              ),
            ),
            Row(children: [
              Card(
                child: SizedBox(
                  height: 120,
                  width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.book), Text('Aulas'), Text('16')],
                ),
              ),
            ),
            // O 2 card vai aqui 
            Card(
              child: SizedBox(
                height: 120,
                width: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.check), Text('Tarefas'), Text('12')],
              ),
            ),
            )
            ],
            )
          ],
        ),
      ),
    );
  }
}
