import 'package:aula_01/features/store/domain/entities/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../infra/data/product_repository.dart';
import 'product_list_event.dart';
import 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  // Recebe o repositório que contem os produtos.
  final ProductRepository productRepo = ProductRepository();

  // Define o estado inicial e configura os eventos
  ProductListBloc() : super(ProductListLoading()) {
    // Escuta o evento de inivialização
    on<ProductListInitialize>((event, emit) async {
      // Emite Loading para indicar o carregamento.
      emit(ProductListLoading());

      // Aguarda 3 segundos, conforme a atividade.
      await Future.delayed(const Duration(seconds: 5));

      try {
        // Recupera os produtos do repositório.
        List<Product> dados = productRepo.getProducts();

        // Verifica se existem produtos
        if (dados.isNotEmpty) {
          emit(ProductListSuccess(produtos: dados));
        } else {
          emit(ProductListFailure(msg: 'Sem produtos cadastrados'));
        }
      } catch (erro) {
        // caso ocoraa algum erro, emit Failure
        emit(ProductListFailure(msg: 'Erro ao carregar produtos'));
      }
    });
    add(ProductListInitialize());
  }
}
