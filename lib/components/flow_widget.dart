import 'package:flutter/material.dart';

class AppFlowWidget extends StatefulWidget {
  const AppFlowWidget({super.key});

  @override
  State<AppFlowWidget> createState() => _AppFlowWidgetState();
}

class _AppFlowWidgetState extends State<AppFlowWidget>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 500));

  IconData _lastIconClicked = Icons.notifications;

  List<IconData> menuItems = [
    Icons.home,
    Icons.card_travel,
    Icons.percent,
    Icons.favorite
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Flow(
          delegate: FlowMenuDelegate(menuAnimation: _animationController),
          children: menuItems
              .map((icon) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      onPressed: () {
                        if (icon != Icons.menu) {
                          setState(() {
                            _lastIconClicked = icon;
                          });
                        }
                        _animationController.status == AnimationStatus.completed
                            ? _animationController.reverse()
                            : _animationController.forward();
                      },
                      backgroundColor:
                          _lastIconClicked == icon ? Colors.pink : Colors.grey,
                      child: Icon(icon),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  AnimationController menuAnimation;
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);
  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i)!.width * i;

      context.paintChild(i,
          transform: Matrix4.translationValues(dx * menuAnimation.value, 0, 0));
    }
  }

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation !=
        oldDelegate.menuAnimation; // TODO: implement shouldRepaint
  }
}
