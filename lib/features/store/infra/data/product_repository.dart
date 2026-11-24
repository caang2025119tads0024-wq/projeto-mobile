import '../../domain/entities/product.dart';

class ProductRepository {
  final List<Product> produtos = [
    Product(
      identificador: 1,
      nome: 'Lenovo Ideapad Slim 3i Gen 10',
      categoria: 'Notebook',
      preco: 'R\$ 3.499,00',
      avaliacao: '4,9',
      urlImagem: 'https://blogdomaisvendido.com/wp-content/uploads/2025/03/Notebook-Samsung-Book-Intel-Core-I7-800x544.jpg',
    ),

    Product(
      identificador: 2,
      nome: 'Android Smartphone',
      categoria: 'Smartphone',
      preco: '1.299,00',
      avaliacao: '4,6',
      urlImagem: 'https://americanas.vtexassets.com/arquivos/ids/37360566/MOTOG17256GBROXO.png?v=639098617774300000',
    ),

    Product(
      identificador: 3,
      nome: 'Bluetooth 5.3 Sem Fio',
      categoria: 'Fone de Ouvido',
      preco: '299,00',
      avaliacao: '4,8',
      urlImagem: 'https://img.kalunga.com.br/fotosdeprodutos/282256z.jpg',
    ),
  ];

  // Adiciona um produto à lista
  void add(Product product) => produtos.add(product);

  // Retorna todos os produtos cadastrados
  List<Product> getProducts() {
    return produtos;
  }
}
