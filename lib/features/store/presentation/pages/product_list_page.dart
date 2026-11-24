import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/product_list_bloc.dart';
import '../bloc/product_list_state.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Cria o Bloc.
      create: (BuildContext context) => ProductListBloc(),

      child: Scaffold(
        appBar: AppBar(
          title: const Text('Produtos'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
            ),
          ],
        ),

        body: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
            // ESTADO DE LOADING
            if (state is ProductListLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            // ESTADO SUCCESS
            if (state is ProductListSuccess) {
              return ListView.builder(
                itemCount: state.produtos.length,

                itemBuilder: (context, index) {
                  final produto = state.produtos[index];

                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: ListTile(
                      contentPadding: const EdgeInsets.all(12),

                      // IMAGEM DO PRODUTO
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          produto.urlImagem,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.image_not_supported);
                          },
                        ),
                      ),

                      // INFORMAÇÕES DO PRODUTO
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            produto.nome,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text(produto.categoria),

                          const SizedBox(height: 10),

                          Row(
                            children: [
                              Text(
                                produto.preco,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.indigo,
                                ),
                              ),

                              const SizedBox(width: 8),

                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),

                              Text(produto.avaliacao),
                            ],
                          ),
                        ],
                      ),

                      // ÍCONE DO LADO DIREITO
                      trailing: const Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  );
                },
              );
            }

            // ESTADO FAILURE
            if (state is ProductListFailure) {
              return Center(child: Text(state.msg));
            }

            // RETORNO PADRÃO
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
