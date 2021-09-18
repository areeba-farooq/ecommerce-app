import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 3))..repeat(reverse: true);
  late Animation<Offset> _animation =
      Tween(
          begin: Offset.zero,
          end: Offset(0, 0.08)
      ).animate(_controller);

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset('images/dubuz.png', height: 200, width: 500,),);
  }
}
