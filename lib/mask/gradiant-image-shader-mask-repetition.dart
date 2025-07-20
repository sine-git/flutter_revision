import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GradiantImageShaderMaskRepetitionPage extends StatefulWidget {
  const GradiantImageShaderMaskRepetitionPage({super.key});

  @override
  State<GradiantImageShaderMaskRepetitionPage> createState() =>
      _GradiantImageShaderMaskRepetitionPageState();
}

class _GradiantImageShaderMaskRepetitionPageState
    extends State<GradiantImageShaderMaskRepetitionPage> {
  ui.Image? image;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadImage("assets/images/traditional-women-yellow.jpeg");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: image == null
          ? const SizedBox.shrink()
          : ShaderMask(
              shaderCallback: (bounds) => ImageShader(image!, TileMode.mirror,
                  TileMode.repeated, Matrix4.identity().scaled(0.9).storage),
              child: const Text(
                "Woow!!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
    ));
  }

  Future<void> _loadImage(String imagePath) async {
    final ByteData byteData = await rootBundle.load(imagePath);
    final Uint8List list = byteData.buffer.asUint8List();
    final Completer<ui.Image> completer = Completer();

    ui.decodeImageFromList(
      list,
      (ui.Image uiImage) {
        completer.complete(uiImage);
      },
    );
    image = await completer.future;
    setState(() {
      image;
    });
    print("Image is loaded...");
  }
}
