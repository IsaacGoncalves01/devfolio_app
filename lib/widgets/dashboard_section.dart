
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import 'stat_card.dart';
import 'project_card.dart';

// Seção principal do dashboard
class DashboardSection extends StatelessWidget {
  const DashboardSection({super.key});

  // Define a quantidade de colunas conforme a largura disponível
  int _calcularColunas(double largura) {
    if (largura >= 700) {
      return 2;
    } else {
      return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final largura = constraints.maxWidth;
        final colunas = _calcularColunas(largura);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dashboard de projetos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.roxoEscuro,
              ),
            ),

            const SizedBox(height: 16),

            // Grade de indicadores
            GridView.count(
              crossAxisCount: colunas,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: colunas == 1 ? 4.0 : 3.2,
              children: const [
                StatCard(
                  titulo: 'Projetos',
                  valor: '08',
                  icone: Icons.folder_open,
                ),
                StatCard(
                  titulo: 'Tecnologias',
                  valor: '07',
                  icone: Icons.code,
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Text(
              'Meus projetos',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.roxoEscuro,
              ),
            ),

            const SizedBox(height: 12),

            // Grade de cartões de projetos
            GridView.count(
              crossAxisCount: colunas,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: colunas == 1 ? 1.8 : 1.7,
              children: const [
                ProjectCard(
                  titulo: 'DevFolio',
                  descricao: 'Portfólio de desenvolvedor mobile.',
                  tecnologia: 'Flutter',
                  icone: Icons.person,
                ),

                ProjectCard(
                  titulo: 'App de Tarefas',
                  descricao: 'Organização de tarefas e atividades.',
                  tecnologia: 'Dart',
                  icone: Icons.check_circle_outline,
                ),

                ProjectCard(
                  titulo: 'Consulta CEP',
                  descricao: 'Consulta de endereços por CEP.',
                  tecnologia: 'API',
                  icone: Icons.location_on_outlined,
                ),

                ProjectCard(
                  titulo: 'Gerenciador',
                  descricao: 'Gerenciamento de informações.',
                  tecnologia: 'Flutter',
                  icone: Icons.dashboard_outlined,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
