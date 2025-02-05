import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBluePage extends StatefulWidget {
  const AppBluePage({super.key});

  @override
  State<AppBluePage> createState() => _AppBluePageState();
}

class _AppBluePageState extends State<AppBluePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
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
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF4F73CC), Color(0xFF107DCC)])),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            // prefixIcon: const Icon(Icons.home),
                            prefix: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Text("Design.in",
                                  style: _getWhiteTextStyle(15)),
                            ),
                            suffixIcon: const Icon(
                              CupertinoIcons.search,
                              color: Colors.white,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusColor: Colors.white,
                            hoverColor: Colors.white),
                        cursorColor: Colors.white,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                decoration: _transparentDecoration(),
                                child: Text(
                                  "Daily inspiration",
                                  style: _getWhiteTextStyle(30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 8.0),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  decoration: _transparentDecoration(),
                                  child: Text(
                                    "For developpers",
                                    style: _getWhiteTextStyle(20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, left: 10.0, bottom: 8),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 6),
                                  decoration: _transparentDecoration(),
                                  child: Text(
                                    "Discover and save on your email",
                                    style: _getWhiteTextStyle(
                                      12,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: "My Collections",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " {8}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w200),
                    ),
                  ])),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://i.pinimg.com/474x/71/6c/ff/716cff4d829fadbfb0eecac91fb0963e.jpg",
                          fit: BoxFit.cover,
                          height: 200,
                          width: 100,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 200,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://i.pinimg.com/474x/74/75/fd/7475fd37a3b527a6695a29707887d9c8.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://i.pinimg.com/474x/aa/29/51/aa29513a29196803f09d43ad017e77e1.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: ColorFiltered(
                                            colorFilter: ColorFilter.mode(
                                                Colors.black.withOpacity(0.4),
                                                BlendMode.color),
                                            child: Image.network(
                                              "https://i.pinimg.com/474x/d6/d6/74/d6d674f250df5a5e4d0969137d83f6fd.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
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
