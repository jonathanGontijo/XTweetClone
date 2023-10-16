import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/dados/dados.dart';
import 'package:flutter_tab_bar/models/postagem.dart';

import '../componentes/cartao_postagem.dart';

class Seguindo extends StatelessWidget {
  const Seguindo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: postagens.length,
        itemBuilder: (context, indice) {
          Postagem postagem = postagens[indice];
          return CartaoPostagem(postagem: postagem);
        },
      ),
    );
  }
}
