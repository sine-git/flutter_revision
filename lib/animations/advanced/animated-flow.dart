// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedFlowPage extends StatefulWidget {
  const AnimatedFlowPage({super.key});

  @override
  State<AnimatedFlowPage> createState() => _AnimatedFlowPageState();
}

List<IconData> icons = [
  Icons.favorite,
  Icons.access_alarm,
  Icons.add,
  Icons.menu,
  Icons.shop,
];

class _AnimatedFlowPageState extends State<AnimatedFlowPage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  late CurvedAnimation curvedAnimation;
  @override
  void initState() {
    // TODO: implement initState

    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );
    curvedAnimation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      curvedAnimation,
    );

    controller.addListener(
      () {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  animateButton() {
    if (controller.status == AnimationStatus.completed) {
      controller.reverse();
    } else {
      controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            clipBehavior: Clip.none,
            height: 200,
            width: 200,
            //color: Colors.blue,
            alignment: Alignment.center,
            child: Flow(
              clipBehavior: Clip.none,
              delegate: IconButtonDelegate(controller: controller),
              children: icons
                  .map(
                    (icon) => SizedBox(
                      width: 50,
                      height: 50,
                      //color: Colors.green,
                      child: FloatingActionButton(
                          backgroundColor: Colors.purple,
                          //elevation: 0.1,
                          shape: const CircleBorder(side: BorderSide(width: 0)),
                          onPressed: () {
                            animateButton();
                          },
                          child: Icon(icon)),
                    ),
                  )
                  .toList(),
            )),
      ),
    );
  }
}

class IconButtonDelegate extends FlowDelegate {
  Animation controller;
  IconButtonDelegate({
    required this.controller,
  });
  @override
  void paintChildren(FlowPaintingContext context) {
    final childCount = context.childCount;
    final size = context.size;
    final centerX = size.height / 2;
    final centerY = size.width / 2;
    final theta = 2 * pi / (childCount - 1);

    for (int i = 0; i < childCount; i++) {
      print("Number : $i");
      print("Theta : $theta");
      final childSize = context.getChildSize(i);

      final radiusFactor = i == 0 ? 0 : controller.value;

      //---------- Tracer le coordonné x du cercle
      final offsetX = (centerX) -
          childSize!.width / 2 +
          radiusFactor * (centerX) * cos(i * theta);
      //---------- Tracer le coordonné y du cercle
      final offsetY = (centerY) -
          childSize.height / 2 +
          radiusFactor * (centerY) * sin(i * theta);
      print("Offsets x : , $offsetX y : $offsetY");
      context.paintChild(i,
          transform: Matrix4.identity()..translate(offsetX, offsetY, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
