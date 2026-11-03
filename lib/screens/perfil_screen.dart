import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/info_item.dart';
import '../widgets/skill_chip.dart';
import '../widgets/dashboard_section.dart';

// Tela principal do DevFolio
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
            constraints: const BoxConstraints(maxWidth: 850),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // CARTÃO DE IDENTIFICAÇÃO
                Container(
                  padding: const EdgeInsets.all(28),

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
                      // FOTO DE PERFIL
                      CircleAvatar(
                        radius: 58,
                        backgroundColor: Colors.white,

                        child: CircleAvatar(
                          radius: 53,
                          backgroundImage: const AssetImage(
                            'assets/images/perfil.png',
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // NOME
                      const Text(
                        'Aluno Teste',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      // IDENTIFICAÇÃO PROFISSIONAL
                      const Text(
                        'Desenvolvedora Mobile em Formação',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // STATUS
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
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
                              size: 10,
                            ),

                            SizedBox(width: 8),

                            Text(
                              'Em constante aprendizado',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      Divider(
                        color: Colors.white.withValues(alpha: 0.3),
                      ),

                      const SizedBox(height: 16),

                      // INFORMAÇÕES DE CONTATO
                      const Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 24,
                        runSpacing: 16,
                        children: [
                          InfoItem(
                            icone: Icons.email_outlined,
                            texto: 'Seu e-mail',
                          ),

                          InfoItem(
                            icone: Icons.code,
                            texto: 'GitHub: AlunoTeste',
                          ),

                          InfoItem(
                            icone: Icons.school_outlined,
                            texto: 'Téc. em Desenvolvimento',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // SEÇÃO SOBRE MIM
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
                        'Sou estudante de Desenvolvimento de Sistemas, '
                        'interessado em tecnologia, programação e '
                        'desenvolvimento de soluções digitais. Estou constantemente '
                        'aprimorando minhas habilidades por meio de '
                        'estudos e projetos práticos.',

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

                // SEÇÃO DE HABILIDADES
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

                // DASHBOARD DE PROJETOS
                const DashboardSection(),

                const SizedBox(height: 24),

                // RODAPÉ
                const Center(
                  child: Text(
                    'DevFolio App • Meu portfólio em desenvolvimento',
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