
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/info_item.dart';
import '../widgets/skill_chip.dart';
import '../widgets/dashboard_section.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fundo,
      appBar: AppBar(
        title: const Text(
          'DevFolio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.fundo,
        foregroundColor: AppColors.roxoEscuro,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    final largura = constraints.maxWidth >= 750
                        ? (constraints.maxWidth - 32) / 3
                        : constraints.maxWidth;

                    return Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        SizedBox(
                          width: largura,
                          child: const CartaoAluno(
                            nome: 'Giulia Melise',
                          ),
                        ),
                        SizedBox(
                          width: largura,
                          child: const CartaoAluno(
                            nome: 'Isaac Gonçalves',
                          ),
                        ),
                        SizedBox(
                          width: largura,
                          child: const CartaoAluno(
                            nome: 'Bianca de Oliveira',
                          ),
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 24),

                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.borda),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sobre mim',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.roxoEscuro,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Somos estudantes de Desenvolvimento de Sistemas, '
                        'interessados em tecnologia, programação e '
                        'desenvolvimento de soluções digitais. Estamos '
                        'constantemente aprimorando nossas habilidades '
                        'por meio de estudos e projetos práticos.',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.borda),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Habilidades técnicas',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.roxoEscuro,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          SkillChip(
                            habilidade: 'Flutter',
                            icone: Icons.phone_android,
                          ),
                          SkillChip(
                            habilidade: 'Dart',
                            icone: Icons.code,
                          ),
                          SkillChip(
                            habilidade: 'HTML',
                            icone: Icons.code,
                          ),
                          SkillChip(
                            habilidade: 'CSS',
                            icone: Icons.palette_outlined,
                          ),
                          SkillChip(
                            habilidade: 'JavaScript',
                            icone: Icons.code,
                          ),
                          SkillChip(
                            habilidade: 'Git & GitHub',
                            icone: Icons.source,
                          ),
                          SkillChip(
                            habilidade: 'SQL',
                            icone: Icons.storage,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                const DashboardSection(),

                const SizedBox(height: 24),

                const Center(
                  child: Text(
                    'DevFolio App • Nosso portfólio em desenvolvimento',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ),

                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CartaoAluno extends StatelessWidget {
  final String nome;

  const CartaoAluno({
    super.key,
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.roxoEscuro,
            AppColors.roxo,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.25),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.roxo.withValues(alpha: 0.20),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 43,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 39,
              backgroundImage: const AssetImage(
                'assets/images/perfil.png',
              ),
            ),
          ),

          const SizedBox(height: 18),

          Text(
            nome,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Desenvolvimento de Sistemas',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),

          const SizedBox(height: 18),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white30),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.circle,
                  color: Color(0xFF8BE3A1),
                  size: 9,
                ),
                SizedBox(width: 7),
                Flexible(
                  child: Text(
                    'Em constante aprendizado',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Divider(
            color: Colors.white.withValues(alpha: 0.3),
          ),

          const SizedBox(height: 12),

          const InfoItem(
            icone: Icons.school_outlined,
            texto: 'Téc. em Desenvolvimento',
          ),
        ],
      ),
    );
  }
}
