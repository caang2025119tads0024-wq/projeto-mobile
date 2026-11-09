import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produtos')),
      body: ListView(
        children: [
          ListTile(
            leading: Image.network(
              'https://blogdomaisvendido.com/wp-content/uploads/2025/03/Notebook-Samsung-Book-Intel-Core-I7-800x544.jpg',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Notebook'),
            subtitle: Text('Lenovo Ideapad Slim 3i Gen 10'),
            trailing: Text('R\$ 3.499,00'),
          ),
          ListTile(
            leading: Image.network(
              'https://americanas.vtexassets.com/arquivos/ids/37360566/MOTOG17256GBROXO.png?v=639098617774300000',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Smartphone'),
            subtitle: Text('6.7" Android Smartphone'),
            trailing: Text('R\$ 1.299,00'),
          ),
          ListTile(
            leading: Image.network(
              'https://img.kalunga.com.br/fotosdeprodutos/282256z.jpg',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text('Fone de Ouvido'),
            subtitle: Text('Bluetooth 5.3 Sem Fio'),
            trailing: Text('R\$ 299,00'),
          ),
        ],
      ),
    );
  }
}
