// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dotted_border/dotted_border.dart';

class DashedContainer extends StatefulWidget {
  const DashedContainer({
    Key? key,
    this.width,
    this.height,
    this.borderColor,
    this.borderRadius,
    this.onTap, // Añadimos el parámetro para la acción
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? borderColor;
  final double? borderRadius;
  final Future Function()? onTap;

  @override
  _DashedContainerState createState() => _DashedContainerState();
}

class _DashedContainerState extends State<DashedContainer> {
  bool _isHovered = false; // Estado para detectar el mouse

  @override
  Widget build(BuildContext context) {
    // Colores basados en los que detectamos de tu imagen
    final baseColor = widget.borderColor ?? Color(0xFF4789C4);
    final fillColor = _isHovered
        ? baseColor.withOpacity(0.2) // Color más fuerte al pasar el mouse
        : baseColor.withOpacity(0.1); // Color suave normal

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click, // Cambia a la "manita" automáticamente
      child: GestureDetector(
        onTap: () async {
          if (widget.onTap != null) {
            await widget.onTap!();
          }
        },
        child: DottedBorder(
          color: _isHovered ? baseColor : baseColor.withOpacity(0.6),
          strokeWidth: 2,
          dashPattern: [6, 4],
          borderType: BorderType.RRect,
          radius: Radius.circular(widget.borderRadius ?? 12),
          child: AnimatedContainer(
            // Para que el cambio de color sea suave
            duration: Duration(milliseconds: 200),
            width: widget.width ?? double.infinity,
            height: widget.height ?? double.infinity,
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
            ),
            child: Center(
              // Aquí dentro puedes poner el icono y el texto desde FF
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_a_photo_outlined, color: baseColor, size: 32),
                  SizedBox(height: 8),
                  Text(
                    "Subir imagen",
                    style: TextStyle(
                        color: baseColor, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
