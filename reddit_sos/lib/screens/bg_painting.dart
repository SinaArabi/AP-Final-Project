import 'dart:math';

import 'package:flutter/material.dart';
import 'package:reddit_sos/config/primaryColor.dart';

class BackgroundPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    print('painting');
    paintPrimary(canvas, size);

  }
  void paintPrimary(Canvas canvas,Size size){
    final path=Path();
    path.moveTo(size.width, size.height/2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path,primaryPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  void _addPointsToPath(Path path,List<Point> points){
    if(points.length<3){
      throw UnsupportedError("Not enogh points");
    }

  }


  BackgroundPainter() :primaryPaint=Paint()
    ..color = PrimaryColor.primary
    ..style = PaintingStyle.fill;

  final Paint primaryPaint;


}
class Point{
  final double x;
  final double y;
  Point(this.x,this.y);

}