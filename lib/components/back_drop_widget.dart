import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppBackDropFilter extends StatefulWidget {
  const AppBackDropFilter({super.key});

  @override
  State<AppBackDropFilter> createState() => _AppBackDropFilterState();
}

class _AppBackDropFilterState extends State<AppBackDropFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Text(
            "0" * 10000,
            style: TextStyle(color: Colors.green),
          ),
          Center(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4,
                  sigmaY: 4,
                ),
                child: Container(width: 250, height: 250),
              ),
            ),
          )
        ],
      ),
    );
  }
}
