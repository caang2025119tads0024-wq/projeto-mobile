import 'package:aula_01/features/chat/presentation/pages/chat_list_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('PDM'),),
      body: Column(
        
        children: [
          Text('Modulos'),
          Expanded(child: 
          ListView(
            children: [
              ListTile(
                title: Text('Chat'),
                
                trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatListPage())
                  );

                }, icon: Icon(Icons.arrow_forward)),
              ),
            ],
          ),
          ),
        ],

      ),
            
  );
  }
}




