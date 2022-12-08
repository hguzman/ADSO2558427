```
import 'package:flutter/material.dart';
import 'package:stackflutter_example/main.dart';

import 'package:flutter/material.dart';

class Background1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderLoginPainter(),
      ),
    );
  }
}

class _HeaderLoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    // Propiedades
    lapiz.color = Colors.blue;
    lapiz.style = PaintingStyle.fill;
    // lapiz.style = PaintingStyle.stroke;
    lapiz.strokeWidth = 8.0;

    final path = Path();
    // dibujar con el path y lapiz

    // path.moveTo(0, size.height * 0.7);
    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.6,
      size.width * 0.5, size.height * 0.4);

    path.quadraticBezierTo(
      size.width * 0.8,
      size.width * 0.20,
      size.width * 0.99,
      size.width * 0.40,
    );

    path.lineTo(size.width, size.height * 0.34);
    path.lineTo(size.width, 0.4);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
```