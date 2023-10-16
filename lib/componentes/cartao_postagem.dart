import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/componentes/botao_postagem.dart';
import 'package:flutter_tab_bar/models/modelos.dart';
import 'package:cached_network_image/cached_network_image.dart';


class CartaoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CartaoPostagem({super.key, required this.postagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.fromLTRB(0, 8, 0, 8),
      color: Colors.black,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CabecalhoPostagem(postagem: postagem),
                Text(postagem.descricao, style: const TextStyle( color: Colors.white,),)
              ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CachedNetworkImage(
            imageUrl: postagem.urlImagem,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: EstatisticasPostagem(postagem: postagem,),
        ),
      ]),
    );
  }
}

class EstatisticasPostagem extends StatelessWidget {
  final Postagem postagem;

  const EstatisticasPostagem({super.key, required this.postagem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        Row(
          children: [
            BotaoPostagem(
              icone: const Icon(
                Icons.comment_bank_outlined,
                size: 15,
                color: Colors.white,
              ), 
            texto: "${postagem.comentarios}",
             onTap: (){},
             ),
             BotaoPostagem(
              icone: const Icon(
                Icons.share_outlined,
                size: 15,
                color: Colors.white,
              ), 
            texto: "${postagem.compartilhamentos}",
             onTap: (){},
             ),
             BotaoPostagem(
              icone: const Icon(
                Icons.favorite_border_outlined,
                size: 15,
                color: Colors.white,
              ), 
            texto: "${postagem.curtidas}",
             onTap: (){},
             )
          ],
        ),
      ],
    );
  }
}

class CabecalhoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CabecalhoPostagem({super.key, required this.postagem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundImage:
              CachedNetworkImageProvider(postagem.usuario.urlImagem),
          backgroundColor: Colors.grey[200],
        ),
       const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postagem.usuario.nome,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text("${postagem.tempoAtras} - ", 
                    style: const TextStyle(
                      color: Colors.white
                      ),
                  ),
                 const Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}
