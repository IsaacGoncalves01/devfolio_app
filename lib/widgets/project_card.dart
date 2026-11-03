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
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      color: Colors.white,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),

      child: Stack(
        children: [
          // Conteúdo principal do cartão
          Padding(
            padding: const EdgeInsets.all(14),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icone,
                  size: 32,
                  color: AppColors.roxo,
                ),

                const SizedBox(height: 12),

                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.roxoEscuro,
                  ),
                ),

                const SizedBox(height: 6),

                Expanded(
                  child: Text(
                    descricao,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ),

                Text(
                  tecnologia,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: AppColors.roxo,
                  ),
                ),
              ],
            ),
          ),

          // Etiqueta posicionada no canto superior direito
          Positioned(
            top: 8,
            right: 8,

            child: Container(
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
          ),
        ],
      ),
    );
  }
}