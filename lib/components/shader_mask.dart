import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatefulWidget {
  const ShaderMaskWidget({super.key});

  @override
  State<ShaderMaskWidget> createState() => _ShaderMaskWidgetState();
}

class _ShaderMaskWidgetState extends State<ShaderMaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ShaderMask(
            shaderCallback: (bounds) => const RadialGradient(
                    colors: [Colors.purple, Colors.orangeAccent],
                    radius: 4,
                    center: Alignment.topRight,
                    tileMode: TileMode.mirror)
                .createShader(bounds),
            blendMode: BlendMode.srcIn,
            child: const Text(
              "This is is a beautiful text",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
