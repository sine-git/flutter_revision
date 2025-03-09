import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GradiantImageShaderMaskPage extends StatefulWidget {
  const GradiantImageShaderMaskPage({super.key});

  @override
  State<GradiantImageShaderMaskPage> createState() =>
      _GradiantImageShaderMaskPageState();
}

class _GradiantImageShaderMaskPageState
    extends State<GradiantImageShaderMaskPage> {
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
            ? const SizedBox.shrink(
                child: Text("Is loading..."),
              )
            : ShaderMask(
                shaderCallback: (bounds) => ImageShader(
                    image!,
                    TileMode.repeated,
                    TileMode.repeated,
                    Matrix4.identity().scaled(0.5).storage),
                blendMode: BlendMode.srcIn,
                child: const Text(
                  textAlign: TextAlign.center,
                  "This is cool !",
                  style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
      ),
    );
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
