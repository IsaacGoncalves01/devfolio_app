import 'package:flutter/material.dart';

// Widget reutilizável para informações do desenvolvedor
class InfoItem extends StatelessWidget {
  final IconData icone;
  final String texto;

  const InfoItem({
    super.key,
    required this.icone,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icone,
          color: Colors.white70,
          size: 18,
        ),

        const SizedBox(width: 8),

        Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}