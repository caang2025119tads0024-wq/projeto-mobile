void exibirOla(){
 print('Ola');
}

void exibirMsgPosicional (String msg){
print('Msg: $msg');
}

void exibirMsgNomeado({required String msg}){
print('Msg: $msg' );

}

bool menorQue5(int numero) => numero < 5;


bool par(int numero) => numero % 2 == 0;

int soma(int n1, int n2) =>  n1 + n2;


void main(List<String> args){
 // Chamando as funcões
 exibirOla();
 exibirMsgPosicional('Msg1');
 exibirMsgNomeado(msg: 'Msg2');

 print(menorQue5(3));
 print(par(28));
 print(soma(10, 23));

}
