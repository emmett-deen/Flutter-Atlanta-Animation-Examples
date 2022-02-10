import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  final double waveCenter;
  final double waveOffset = 0.16;

  final double waveIntensity;

  WavePainter({this.waveCenter = 0.5, this.waveIntensity = 0.6});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..color = Colors.blue;
    var path = Path();

    path.moveTo(0, (waveCenter - 0).abs() * waveIntensity * size.height);
    path.cubicTo(
        0.33 * size.width,
        (waveCenter - 0.33).abs() * waveIntensity * size.height,
        0.66 * size.width,
        (waveCenter - 0.66).abs() * waveIntensity * size.height,
        size.width,
        (waveCenter - 1).abs() * waveIntensity * size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
