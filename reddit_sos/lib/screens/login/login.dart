import 'package:flutter/material.dart';
import 'package:reddit_sos/screens/bg_painting.dart';

class loginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     body: Stack(
       children: [
         SizedBox.expand(
           child: CustomPaint(
             painter: BackgroundPainter(),
           ),
         )
       ],
     ),
   );
  }
  
}