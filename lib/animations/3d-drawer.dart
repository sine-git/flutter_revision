import 'package:flutter/material.dart';

class App3DDrawerPage extends StatefulWidget {
  final Widget child;
  final Widget drawer;
  const App3DDrawerPage({super.key, required this.child, required this.drawer});
  @override
  State<App3DDrawerPage> createState() => _App3DDrawerPageState();
}

class _App3DDrawerPageState extends State<App3DDrawerPage>
    with TickerProviderStateMixin {
  late AnimationController _xControllerForChild;
  late Animation<double> _yRotationAnimatinoForChild;

  late AnimationController _xControllerForDrawer;
  late Animation<double> _yRotationAnimatinoForDrawer;
  @override
  void initState() {
    // TODO: implement initState
    _xControllerForChild = AnimationController(vsync: this);
    _xControllerForDrawer = AnimationController(vsync: this);
    super.initState();
  }

  _App3DDrawerPageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animated 3D Drawer"),
      ),
    );
  }
}
