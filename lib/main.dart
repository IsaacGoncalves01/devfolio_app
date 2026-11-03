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
                      colors: [roxoEscuro, roxo],
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
                      const Text(
                        'Desenvolvedora Mobile em Formação',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 20),
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
        Icon(icone, color: Colors.white70, size: 18),
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

// DASHBOARD DE PROJETOS
class DashboardSection extends StatelessWidget {
  const DashboardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dashboard de projetos',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: PerfilScreen.roxoEscuro,
          ),
        ),
        const SizedBox(height: 16),

        // Grade de indicadores
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.8,
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
            color: PerfilScreen.roxoEscuro,
          ),
        ),
        const SizedBox(height: 12),

        // Grade de cartões de projetos
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.95,
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
  }
}

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
            Icon(icone, size: 28, color: PerfilScreen.roxo),
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
                    color: PerfilScreen.roxoEscuro,
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
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icone, size: 32, color: PerfilScreen.roxo),
                const SizedBox(height: 12),
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: PerfilScreen.roxoEscuro,
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
                    color: PerfilScreen.roxo,
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
                color: const Color(0xFFF1EAF8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Projeto',
                style: TextStyle(
                  fontSize: 9,
                  color: PerfilScreen.roxoEscuro,
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