import 'dart:ui';
import 'package:flutter/material.dart';

class ManPainter extends CustomPainter {
  final double animationValue;

  ManPainter(this.animationValue);

  Paint marioPaint = Paint()
    ..color = Colors.red;
  Paint marioPaintOlive = Paint()
    ..color = Colors.black;
  Paint marioPaintSal = Paint()
    ..color = Colors.orange[100]!;
  Map<double, Picture> cache = {};

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPicture(drawHead(size));
    if (animationValue < 0.25) {
      canvas.drawPicture(drawIdleAnim(size));
    } else if (animationValue < 0.5) {
      canvas.drawPicture(drawRunAnim(size));
    } else if (animationValue < 0.75) {
      canvas.drawPicture(drawJumpAnim(size));
    } else {
      canvas.drawPicture(drawRunAnim(size));
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  double roundTwoDecimal(double value) {
    return (value * 100).round() * 0.01;
  }

  Rect GetTenRect(double x, double y, Size size) {
    return Rect.fromLTWH(size.width * 0.05 * x, size.height * 0.05 * y,
        5 * size.width * 0.01, 5 * size.height * 0.01);
  }

  Picture drawHead(Size size) {
    PictureRecorder recorder = PictureRecorder();
    Canvas runCanvas = Canvas(recorder);
    runCanvas.drawRect(GetTenRect(7, 1, size), marioPaint);
    runCanvas.drawRect(GetTenRect(8, 1, size), marioPaint);
    runCanvas.drawRect(GetTenRect(9, 1, size), marioPaint);

    runCanvas.drawRect(GetTenRect(6, 2, size), marioPaint);
    runCanvas.drawRect(GetTenRect(7, 2, size), marioPaint);
    runCanvas.drawRect(GetTenRect(8, 2, size), marioPaint);
    runCanvas.drawRect(GetTenRect(9, 2, size), marioPaint);
    runCanvas.drawRect(GetTenRect(10, 2, size), marioPaint);
    runCanvas.drawRect(GetTenRect(11, 2, size), marioPaint);
    runCanvas.drawRect(GetTenRect(12, 2, size), marioPaint);

    runCanvas.drawRect(GetTenRect(6, 3, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(7, 3, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(8, 3, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(9, 3, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(10, 3, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(11, 3, size), marioPaintSal);

    runCanvas.drawRect(GetTenRect(5, 4, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(6, 4, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(7, 4, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(8, 4, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(9, 4, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(10, 4, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(11, 4, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(12, 4, size), marioPaintSal);

    runCanvas.drawRect(GetTenRect(5, 5, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(6, 5, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(7, 5, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(8, 5, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(9, 5, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(10, 5, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(11, 5, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(12, 5, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(13, 5, size), marioPaintSal);

    runCanvas.drawRect(GetTenRect(5, 6, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(6, 6, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(7, 6, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(8, 6, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(9, 6, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(10, 6, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(11, 6, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(12, 6, size), marioPaintOlive);

    runCanvas.drawRect(GetTenRect(7, 7, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(8, 7, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(9, 7, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(10, 7, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(11, 7, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(12, 7, size), marioPaintSal);
    Picture picture = recorder.endRecording();
    return picture;
  }

  Picture drawIdleAnim(Size size) {
    PictureRecorder recorder = PictureRecorder();
    Canvas idleCanvas = Canvas(recorder);

    idleCanvas.drawRect(GetTenRect(6, 8, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(7, 8, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(8, 8, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(9, 8, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(10, 8, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(11, 8, size), marioPaintOlive);

    idleCanvas.drawRect(GetTenRect(5, 9, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(6, 9, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(7, 9, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(8, 9, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(9, 9, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(10, 9, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(11, 9, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(12, 9, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(13, 9, size), marioPaintOlive);

    idleCanvas.drawRect(GetTenRect(5, 10, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(6, 10, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(7, 10, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(8, 10, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(9, 10, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(10, 10, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(11, 10, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(12, 10, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(13, 10, size), marioPaintOlive);

    idleCanvas.drawRect(GetTenRect(5, 11, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(6, 11, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(7, 11, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(8, 11, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(9, 11, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(10, 11, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(11, 11, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(12, 11, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(13, 11, size), marioPaintSal);

    idleCanvas.drawRect(GetTenRect(5, 12, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(6, 12, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(7, 12, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(8, 12, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(9, 12, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(10, 12, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(11, 12, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(12, 12, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(13, 12, size), marioPaintSal);

    idleCanvas.drawRect(GetTenRect(5, 13, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(6, 13, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(7, 13, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(8, 13, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(9, 13, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(10, 13, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(11, 13, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(12, 13, size), marioPaintSal);
    idleCanvas.drawRect(GetTenRect(13, 13, size), marioPaintSal);

    idleCanvas.drawRect(GetTenRect(6, 14, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(7, 14, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(8, 14, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(9, 14, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(10, 14, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(11, 14, size), marioPaint);
    idleCanvas.drawRect(GetTenRect(12, 14, size), marioPaint);

    idleCanvas.drawRect(GetTenRect(6, 15, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(7, 15, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(11, 15, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(12, 15, size), marioPaintOlive);

    idleCanvas.drawRect(GetTenRect(6, 16, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(7, 16, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(8, 16, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(11, 16, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(12, 16, size), marioPaintOlive);
    idleCanvas.drawRect(GetTenRect(13, 16, size), marioPaintOlive);

    Picture picture = recorder.endRecording();
    return picture;
  }

  Picture drawRunAnim(Size size) {
    PictureRecorder recorder = PictureRecorder();
    Canvas runCanvas = Canvas(recorder);

//face end

    runCanvas.drawRect(GetTenRect(6, 8, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(7, 8, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(8, 8, size), marioPaint);
    runCanvas.drawRect(GetTenRect(9, 8, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(10, 8, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(11, 8, size), marioPaintOlive);

    runCanvas.drawRect(GetTenRect(5, 9, size), marioPaint);
    runCanvas.drawRect(GetTenRect(6, 9, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(7, 9, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(8, 9, size), marioPaint);
    runCanvas.drawRect(GetTenRect(9, 9, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(10, 9, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(11, 9, size), marioPaint);

    runCanvas.drawRect(GetTenRect(5, 10, size), marioPaint);
    runCanvas.drawRect(GetTenRect(6, 10, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(7, 10, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(8, 10, size), marioPaint);
    runCanvas.drawRect(GetTenRect(9, 10, size), marioPaint);
    runCanvas.drawRect(GetTenRect(10, 10, size), marioPaint);
    runCanvas.drawRect(GetTenRect(11, 10, size), marioPaint);
    runCanvas.drawRect(GetTenRect(12, 10, size), marioPaint);

    runCanvas.drawRect(GetTenRect(5, 11, size), marioPaint);
    runCanvas.drawRect(GetTenRect(6, 11, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(7, 11, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(8, 11, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(9, 11, size), marioPaint);
    runCanvas.drawRect(GetTenRect(10, 11, size), marioPaint);
    runCanvas.drawRect(GetTenRect(11, 11, size), marioPaint);
    runCanvas.drawRect(GetTenRect(12, 11, size), marioPaint);

    runCanvas.drawRect(GetTenRect(5, 12, size), marioPaint);
    runCanvas.drawRect(GetTenRect(6, 12, size), marioPaint);
    runCanvas.drawRect(GetTenRect(7, 12, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(8, 12, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(9, 12, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(10, 12, size), marioPaint);
    runCanvas.drawRect(GetTenRect(11, 12, size), marioPaint);
    runCanvas.drawRect(GetTenRect(12, 12, size), marioPaint);

    runCanvas.drawRect(GetTenRect(6, 13, size), marioPaint);
    runCanvas.drawRect(GetTenRect(7, 13, size), marioPaint);
    runCanvas.drawRect(GetTenRect(8, 13, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(9, 13, size), marioPaintSal);
    runCanvas.drawRect(GetTenRect(10, 13, size), marioPaint);
    runCanvas.drawRect(GetTenRect(11, 13, size), marioPaint);
    runCanvas.drawRect(GetTenRect(12, 13, size), marioPaint);

    runCanvas.drawRect(GetTenRect(6, 14, size), marioPaint);
    runCanvas.drawRect(GetTenRect(7, 14, size), marioPaint);
    runCanvas.drawRect(GetTenRect(8, 14, size), marioPaint);
    runCanvas.drawRect(GetTenRect(9, 14, size), marioPaint);
    runCanvas.drawRect(GetTenRect(10, 14, size), marioPaint);
    runCanvas.drawRect(GetTenRect(11, 14, size), marioPaint);
    runCanvas.drawRect(GetTenRect(12, 14, size), marioPaint);

    runCanvas.drawRect(GetTenRect(7, 15, size), marioPaint);
    runCanvas.drawRect(GetTenRect(8, 15, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(9, 15, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(10, 15, size), marioPaintOlive);

    runCanvas.drawRect(GetTenRect(8, 16, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(9, 16, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(10, 16, size), marioPaintOlive);
    runCanvas.drawRect(GetTenRect(11, 16, size), marioPaintOlive);
    Picture picture = recorder.endRecording();
    return picture;
  }

  Picture drawJumpAnim(Size size) {
    PictureRecorder recorder = PictureRecorder();
    Canvas jumpCanvas = Canvas(recorder);

    jumpCanvas.drawRect(GetTenRect(11, 4, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(12, 4, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(14, 4, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(15, 4, size), marioPaintSal);

    jumpCanvas.drawRect(GetTenRect(14, 5, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(15, 5, size), marioPaintOlive);

    jumpCanvas.drawRect(GetTenRect(13, 6, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(14, 6, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(15, 6, size), marioPaintOlive);

    jumpCanvas.drawRect(GetTenRect(13, 7, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(14, 7, size), marioPaintOlive);

//face end

    jumpCanvas.drawRect(GetTenRect(2, 8, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(3, 8, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(4, 8, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(5, 8, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(6, 8, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(7, 8, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(8, 8, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(9, 8, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(10, 8, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(11, 8, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(12, 8, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(13, 8, size), marioPaintOlive);

    jumpCanvas.drawRect(GetTenRect(1, 9, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(2, 9, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(3, 9, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(4, 9, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(5, 9, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(6, 9, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(7, 9, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(8, 9, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(9, 9, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(10, 9, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(11, 9, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(12, 9, size), marioPaint);

    jumpCanvas.drawRect(GetTenRect(1, 10, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(2, 10, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(3, 10, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(6, 10, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(7, 10, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(8, 10, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(9, 10, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(10, 10, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(11, 10, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(12, 10, size), marioPaint);

    jumpCanvas.drawRect(GetTenRect(2, 11, size), marioPaintSal);
    jumpCanvas.drawRect(GetTenRect(6, 11, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(7, 11, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(8, 11, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(9, 11, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(10, 11, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(11, 11, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(12, 11, size), marioPaint);

    jumpCanvas.drawRect(GetTenRect(6, 12, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(7, 12, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(8, 12, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(9, 12, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(10, 12, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(11, 12, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(12, 12, size), marioPaint);

    jumpCanvas.drawRect(GetTenRect(14, 12, size), marioPaintOlive);

    jumpCanvas.drawRect(GetTenRect(6, 13, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(7, 13, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(8, 13, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(9, 13, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(10, 13, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(11, 13, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(12, 13, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(13, 13, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(14, 13, size), marioPaintOlive);

    jumpCanvas.drawRect(GetTenRect(5, 14, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(6, 14, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(7, 14, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(8, 14, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(9, 14, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(10, 14, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(11, 14, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(12, 14, size), marioPaint);
    jumpCanvas.drawRect(GetTenRect(13, 14, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(14, 14, size), marioPaintOlive);

    jumpCanvas.drawRect(GetTenRect(7, 15, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(5, 15, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(6, 15, size), marioPaintOlive);

    jumpCanvas.drawRect(GetTenRect(5, 16, size), marioPaintOlive);
    jumpCanvas.drawRect(GetTenRect(6, 16, size), marioPaintOlive);

    Picture picture = recorder.endRecording();
    return picture;
  }
}