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
              'https://www.lenovo.com/br/pt/p/laptops/ideapad/ideapad-s-series/lenovo-ideapad-slim-3i-gen-10-15-inch-intel/83nus00000?srsltid=AYCX9vKlhN5-qQC_fbKhjx5qusAcwssbT0TeQEdotfuIdEEksZ617wMy',
              width: 60,
              height: 60,
            ),
            title: Text('Notebook'),
            subtitle: Text('Lenovo Ideapad Slim 3i Gen 10'),
            trailing: Text('R\$ 3.499,00'),
          ),
          ListTile(
            leading: Image.network(
              'https://www.google.com/imgres?q=smartphone%20imagem&imgurl=https%3A%2F%2Fimage.made-in-china.com%2F365f3j00tivjOQFBlAqR%2F6-7-Smartphone-Android-com-Tela-de-Polegadas-Dual-SIM-4000mAh-4G-Telefone-M-vel-Inteligente.webp&imgrefurl=https%3A%2F%2Fpt.made-in-china.com%2Fco_szconnectech%2Fproduct_6-7-Inch-Screen-Android-Smartphone-Dual-SIM-4000mAh-4G-Smart-Mobile-Phone_uoiryhhuuu.html&docid=vwoaVbvVgm6d5M&tbnid=a2YkIwMuDYdA7M&vet=12ahUKEwjxit7J0PuXAxWRqZUCHbGGG-oQnPAOegUI5wEQAA..i&w=750&h=750&hcb=2&ved=2ahUKEwjxit7J0PuXAxWRqZUCHbGGG-oQnPAOegUI5wEQAA',
              width: 60,
              height: 60,
            ),
            title: Text('Smartphone'),
            subtitle: Text('6.7" Android Smartphone'),
            trailing: Text('R\$ 1.299,00'),
          ),
          ListTile(
            leading: Image.network(
              'https://www.google.com/imgres?q=fone%20de%20ouvido%20imagem&imgurl=https%3A%2F%2Fcdn.awsli.com.br%2F800x800%2F35%2F35541%2Fproduto%2F379680507%2F56000aef23f04009951110bae6cf5d65-twsdd8h4hk.jpg&imgrefurl=https%3A%2F%2Fwww.gorilashield.com.br%2Ffone-bluetooth-5.3-sem-fio-ergonomico-alcance-ate-10m-e-microfone-integrado-preto-aoc%3Fsrsltid%3DAYCX9vI8byWA4BeWRQMq84Qd-eEowPEX7E0WkbzXf4JCAmg4yrm7JSDt&docid=JJFa28QiOGCDCM&tbnid=4D1x_NLanFbeTM&vet=12ahUKEwirwbaO0fuXAxXEqJUCHbbaCUIQnPAOegUIjwEQAA..i&w=800&h=800&hcb=2&ved=2ahUKEwirwbaO0fuXAxXEqJUCHbbaCUIQnPAOegUIjwEQAA',
              width: 60,
              height: 60,
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
