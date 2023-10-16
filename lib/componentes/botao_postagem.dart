import 'package:flutter/material.dart';

class BotaoPostagem extends StatelessWidget {

  final Icon icone;
  final String texto;
  final VoidCallback onTap;

  const BotaoPostagem({
    super.key,
    required this.icone,
    required this.texto,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.black,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                icone,
                const SizedBox(width: 4,),
                Text(
                  texto,
                      style: const TextStyle(
                        color: Colors.white
                        ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
