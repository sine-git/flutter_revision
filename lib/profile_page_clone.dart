import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBlueProfilePage extends StatefulWidget {
  const AppBlueProfilePage({super.key});

  @override
  State<AppBlueProfilePage> createState() => _AppBlueProfilePageState();
}

class _AppBlueProfilePageState extends State<AppBlueProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                  icon: const Icon(
                    CupertinoIcons.cart,
                    size: 20,
                  ),
                  onPressed: () {}),
            ],
            title: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white.withOpacity(0.2),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: const Text(
                "Design.in",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            leading: IconButton(
                icon: const Icon(
                  CupertinoIcons.back,
                  size: 20,
                ),
                onPressed: () {}),
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: Stack(
              children: [
                ClipPath(
                  clipper: MyCustomClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFF4F73CC), Color(0xFF107DCC)])),
                  ),
                ),
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.white)),
                      child: ClipOval(
                        child: Image.network(
                          "https://i.pinimg.com/736x/fa/4d/2b/fa4d2beb11d65957cc309b136f555538.jpg",
                          height: 90,
                          width: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Christian Eirksen",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("UI/UX Designer",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildProgressIndicator(
                              text: "L", value: 0.4, color: Colors.blue),
                          _buildProgressIndicator(
                              text: "M", value: 0.5, color: Colors.purple),
                          _buildProgressIndicator(
                              text: "K", value: 0.2, color: Colors.blue),
                          _buildProgressIndicator(
                              text: "L", value: 0.9, color: Colors.purple),
                          _buildProgressIndicator(
                              text: "I", value: 0.4, color: Colors.blue),
                          _buildProgressIndicator(
                              text: "L", value: 0.1, color: Colors.purple),
                          _buildProgressIndicator(
                              text: "P", value: 0.4, color: Colors.blue)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.wifi), label: ""),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: "")
          ]),
    );
  }

  Widget _buildProgressIndicator(
      {required double value, required Color color, required String text}) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          height: 20,
          width: 30,
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 8, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 120,
            child: RotatedBox(
              quarterTurns: -1,
              child: LinearProgressIndicator(
                color: color,
                value: value,
                backgroundColor: Colors.grey.withOpacity(0.4),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 12),
          ),
        )
      ],
    );
  }

  BoxDecoration _transparentDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.white.withOpacity(0.2),
    );
  }

  TextStyle _getWhiteTextStyle(double fontSize, {FontWeight? fontWeight}) {
    return TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal);
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color(0xffFFFFFF);
    path = Path();
    path.lineTo(size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height * 0.79, size.width,
        size.height * 0.79);
    path.cubicTo(size.width * 0.97, size.height * 0.77, size.width * 0.93,
        size.height * 0.75, size.width * 0.89, size.height * 0.75);
    path.cubicTo(size.width * 0.73, size.height * 0.73, size.width * 0.62,
        size.height * 0.87, size.width * 0.52, size.height * 0.94);
    path.cubicTo(size.width * 0.42, size.height, size.width * 0.26,
        size.height * 1.05, 0, size.height * 0.87);
    path.cubicTo(0, size.height * 0.87, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, 0, size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
