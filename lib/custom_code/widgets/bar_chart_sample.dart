// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fl_chart_flutter/fl_chart_flutter.dart';
import 'dart:math';

class BarChartSample extends StatefulWidget {
  const BarChartSample({
    Key? key,
    this.width,
    this.height,
    this.complaintNames,
    this.complaintVotes,
  }) : super(key: key);

  final double? width;
  final double? height;

  // Parámetros listos para recibir desde Firebase
  final List<String>? complaintNames;
  final List<int>? complaintVotes;

  @override
  State<BarChartSample> createState() => _BarChartSample1State();
}

class _BarChartSample1State extends State<BarChartSample> {
  @override
  Widget build(BuildContext context) {
    // Datos por defecto para previsualizar en el editor de FlutterFlow
    final names = widget.complaintNames?.isNotEmpty == true
        ? widget.complaintNames!
        : [
            'Infraestructura y Tecnología',
            'Eje de Ética y Transparencia',
            'Académico y Formativo',
            'Eje de Bienestar y Convivencia',
            'Administrativo y de Gestión',
            'Otros'
          ];

    final votes = widget.complaintVotes?.isNotEmpty == true
        ? widget.complaintVotes!
        : [45, 28, 20, 18, 12, 7];

    // Restricción: Mostrar un máximo de 6 elementos
    final int itemCount = names.length > 6 ? 6 : names.length;

    // Calcular el total de votos para los porcentajes
    int totalVotes = votes.fold(0, (sum, item) => sum + item);

    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(itemCount, (index) {
          final name = names[index];
          final voteCount = votes[index];
          final percentage = totalVotes > 0 ? voteCount / totalVotes : 0.0;

          return _buildStatRow(name, voteCount, percentage);
        }),
      ),
    );
  }

  Widget _buildStatRow(String title, int votes, double percentage) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF1C274C), // Azul marino
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '$votes (${(percentage * 100).toStringAsFixed(0)}%)',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LayoutBuilder(
            builder: (context, constraints) {
              return TweenAnimationBuilder<double>(
                // Animación suave de la barra
                tween: Tween<double>(begin: 0.0, end: percentage),
                duration: const Duration(milliseconds: 1200),
                curve: Curves.easeOutCubic,
                builder: (context, value, child) {
                  return Stack(
                    children: [
                      // Fondo de la barra
                      Container(
                        height: 8,
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEBEBEB),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      // Barra animada principal
                      Container(
                        height: 8,
                        width: constraints.maxWidth * value,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1C274C),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
