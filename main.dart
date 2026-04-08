import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
 return const MaterialApp(
 home: DrawPage(),
 );
 }
}
class DrawPage extends StatelessWidget {
 const DrawPage({super.key});
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: const Text('Graphics')),
 body: CustomPaint(
 painter: ShapePainter(),
 child: Container(),
 ),
 );
 }
}
class ShapePainter extends CustomPainter {
 @override
 void paint(Canvas canvas, Size size) {
 final paint = Paint()
 ..color = Colors.blue
 ..style = PaintingStyle.fill;
 canvas.drawCircle(const Offset(150, 150), 50, paint);
 canvas.drawRect(const Rect.fromLTWH(50, 250, 200, 100), paint);
 }
 @override
 bool shouldRepaint(CustomPainter oldDelegate) => false;
}
