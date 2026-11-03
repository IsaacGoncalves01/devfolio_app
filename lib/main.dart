
import 'package:flutter/material.dart';

void main() {
  runApp(const DevFolioApp());
}

// Aplicação principal
class DevFolioApp extends StatelessWidget {
  const DevFolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevFolio App',

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7046A5),
        ),
      ),

      home: const PerfilScreen(),
    );
  }
}

// Tela de perfil do desenvolvedor
class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  static const Color roxo = Color(0xFF7046A5);
  static const Color roxoEscuro = Color(0xFF382052);
  static const Color fundo = Color(0xFFF5F2F9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundo,

      appBar: AppBar(
        title: const Text(
          'DevFolio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: fundo,
        foregroundColor: roxoEscuro,
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
                        roxoEscuro,
                        roxo,
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
                        color: roxo.withValues(alpha: 0.20),
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
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 24,
                        runSpacing: 16,

                        children: const [
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
                    border: Border.all(
                      color: const Color(0xFFE6DDEE),
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sobre mim',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: roxoEscuro,
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
                    border: Border.all(
                      color: const Color(0xFFE6DDEE),
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Habilidades técnicas',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: roxoEscuro,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Wrap(
                        spacing: 10,
                        runSpacing: 10,

                        children: const [
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
                            icone: Icons.html,
                          ),

                          SkillChip(
                            habilidade: 'CSS',
                            icone: Icons.palette_outlined,
                          ),

                          SkillChip(
                            habilidade: 'JavaScript',
                            icone: Icons.javascript,
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

// Widget para informações do desenvolvedor
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

// Widget para representar habilidades técnicas
class SkillChip extends StatelessWidget {
  final String habilidade;
  final IconData icone;

  const SkillChip({
    super.key,
    required this.habilidade,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(
        icone,
        size: 18,
        color: PerfilScreen.roxo,
      ),

      label: Text(habilidade),

      backgroundColor: const Color(0xFFF1EAF8),

      side: BorderSide(
        color: PerfilScreen.roxo.withValues(alpha: 0.20),
      ),

      labelStyle: const TextStyle(
        color: PerfilScreen.roxoEscuro,
        fontWeight: FontWeight.w600,
      ),

      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
    );
  }
}
