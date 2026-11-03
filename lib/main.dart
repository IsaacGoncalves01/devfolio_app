import 'package:flutter/material.dart';

import 'screens/perfil_screen.dart';
import 'theme/app_colors.dart';

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

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.roxo,
        ),
      ),

      home: const PerfilScreen(),
    );
  }
}