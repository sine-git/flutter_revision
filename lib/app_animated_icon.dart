import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppAnimatedIcon extends StatefulWidget {
  const AppAnimatedIcon({super.key});

  @override
  State<AppAnimatedIcon> createState() => _AppAnimatedIconState();
}

class _AppAnimatedIconState extends State<AppAnimatedIcon>
    with TickerProviderStateMixin {
  bool _isplayed = false;
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(duration: Duration(seconds: 10), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            _isplayed = !_isplayed;
          });
          if (_isplayed) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
        },
        child: AnimatedIcon(
          progress: _animationController,
          icon: AnimatedIcons.play_pause,
          color: Colors.blueAccent,
          size: 100,
        ),
      )),
    );
  }
}
