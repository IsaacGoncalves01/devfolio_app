import 'package:flutter/material.dart';

import 'app_colors.dart';

// Configurações visuais principais do DevFolio
class AppTheme {
  static ThemeData get temaPrincipal {
    return ThemeData(
      useMaterial3: true,

      // Paleta principal do aplicativo
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.roxo,
        primary: AppColors.roxo,
        secondary: AppColors.roxoEscuro,
        surface: Colors.white,
      ),

      scaffoldBackgroundColor: AppColors.fundo,

      // Aparência padrão da AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.fundo,
        foregroundColor: AppColors.roxoEscuro,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: AppColors.roxoEscuro,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

      // Aparência padrão dos cartões
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: AppColors.borda,
          ),
        ),
      ),

      // Padronização dos textos
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.roxoEscuro,
        ),
        bodyMedium: TextStyle(
          fontSize: 15,
          color: Colors.black87,
          height: 1.6,
        ),
      ),
    );
  }
}