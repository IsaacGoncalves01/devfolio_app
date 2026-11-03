import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

// Widget reutilizável para representar habilidades técnicas
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
        color: AppColors.roxo,
      ),

      label: Text(habilidade),

      backgroundColor: AppColors.chip,

      side: BorderSide(
        color: AppColors.roxo.withValues(alpha: 0.20),
      ),

      labelStyle: const TextStyle(
        color: AppColors.roxoEscuro,
        fontWeight: FontWeight.w600,
      ),

      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
    );
  }
}