
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

// Cartão reutilizável para apresentar indicadores
class StatCard extends StatelessWidget {
  final String titulo;
  final String valor;
  final IconData icone;

  const StatCard({
    super.key,
    required this.titulo,
    required this.valor,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Icon(
              icone,
              size: 28,
              color: AppColors.roxo,
            ),

            const SizedBox(width: 10),

            // Flexible permite que o texto utilize o espaço disponível
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    valor,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.roxoEscuro,
                    ),
                  ),
                  Text(
                    titulo,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
