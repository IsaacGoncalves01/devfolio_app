import 'package:flutter/material.dart';

import 'screens/perfil_screen.dart';
import 'theme/app_theme.dart';

// Inicialização da aplicação
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

      // Tema centralizado em AppTheme
      theme: AppTheme.temaPrincipal,

      home: const PerfilScreen(),
    );
  }
}