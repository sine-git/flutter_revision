import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GradiantTextShaderMaskRepetitionPage extends StatefulWidget {
  const GradiantTextShaderMaskRepetitionPage({super.key});

  @override
  State<GradiantTextShaderMaskRepetitionPage> createState() =>
      _GradiantTextShaderMaskRepetitionPageState();
}

class _GradiantTextShaderMaskRepetitionPageState
    extends State<GradiantTextShaderMaskRepetitionPage> {
  ui.Image? image;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(colors: [
          Color(0xFFFFD700),
          Color(0xFFFF5733),
          Color(0xFF6A0DAD)
        ]).createShader(bounds),
        child: const Text(
          "Woow!!",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 100, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
