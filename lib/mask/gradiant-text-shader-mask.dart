import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradiantTextShaderMaskPage extends StatefulWidget {
  const GradiantTextShaderMaskPage({super.key});

  @override
  State<GradiantTextShaderMaskPage> createState() =>
      _GradiantTextShaderMaskPageState();
}

class _GradiantTextShaderMaskPageState
    extends State<GradiantTextShaderMaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  tileMode: TileMode.repeated)
              .createShader(bounds),
          child: const Text(
            "This is cool !",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
