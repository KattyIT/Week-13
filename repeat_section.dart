import 'dart:math';
import 'package:flutter/material.dart';


class RepeatSection extends StatefulWidget {
  const RepeatSection({Key? key}) : super(key: key);

  @override
  State<RepeatSection> createState() => _RepeatSectionState();
}

class _RepeatSectionState extends State<RepeatSection> with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(

          child: AnimatedBuilder(
              animation: _controller.view,
              builder: (context, child) {
                return Transform.rotate(
                    angle: _controller.value * 2 * pi,
                    child: child,
                );
              },
            child: SizedBox(
              height: 50,
            width: 50,
            child: Image.network('https://i.pinimg.com/474x/6e/c1/d7/6ec1d708429bb0840ac5c9a8fedd3ef4.jpg'),
          ),
          )
        );
  }
}
