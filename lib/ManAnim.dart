import 'package:flutter/material.dart';
import 'package:loading_redman_ddur/manPainter.dart';


class ManAnim extends StatefulWidget {
  const ManAnim({super.key, required this.size});
  final int size;
  @override
  State<ManAnim> createState() => _MarioAnimState();
}

class _MarioAnimState extends State<ManAnim>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  late double animtaionValue = 0;
  late Size size;
  @override
  void initState() {
    size = Size(widget.size*100,widget.size*100);
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat();
    _controller.addListener(() {
      setState(() {
        if (animtaionValue != _controller.value) {
          animtaionValue = _controller.value;
        }
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ManPainter(animtaionValue),
      size: size,
    );
  }
}
