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
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),

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

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}