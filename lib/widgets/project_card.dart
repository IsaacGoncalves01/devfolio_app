
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

// Cartão reutilizável para apresentar projetos
class ProjectCard extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String tecnologia;
  final IconData icone;

  const ProjectCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.tecnologia,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ícone e etiqueta
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icone,
                  size: 30,
                  color: AppColors.roxo,
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.chip,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Projeto',
                    style: TextStyle(
                      fontSize: 9,
                      color: AppColors.roxoEscuro,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Text(
              titulo,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColors.roxoEscuro,
              ),
            ),

            const SizedBox(height: 6),

            // Descrição ocupa o espaço restante
            Expanded(
              child: Text(
                descricao,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ),

            Text(
              tecnologia,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: AppColors.roxo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
