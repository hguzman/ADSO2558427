````
import 'package:flutter/material.dart';

class Designer1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Color.fromARGB(255, 244, 0, 161);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10.0;

    final path = Path();
    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(
        0, size.height * 0.40, size.width * 0.02, size.height * 0.39);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Background2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: Designer2(),
      ),
    );
  }
}

class Designer2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Color.fromARGB(255, 87, 35, 100);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10.0;

    final path = Path();
    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.96, size.height * 0.49);
    path.quadraticBezierTo(
        size.width, size.height * 0.49, size.width, size.height * 0.40);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Background1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: Designer1(),
      ),
    );
  }
}