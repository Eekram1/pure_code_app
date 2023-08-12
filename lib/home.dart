import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => Home(), // Wrap your app
      ),
    );

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PureCodeApp(),
    );
  }
}

class PureCodeApp extends StatelessWidget {
  const PureCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color(0xFF077183),
              size: 50,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return ListView(
                    children: [
                      ListTile(
                        title: Text(" Home",
                            style: TextStyle(
                                color: Color(0xFF077183),
                                fontSize: 27,
                                fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text(" About us",
                            style: TextStyle(
                                color: Color(0xFF077183),
                                fontSize: 27,
                                fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text(" Our Services",
                            style: TextStyle(
                                color: Color(0xFF077183),
                                fontSize: 27,
                                fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text(" Our Projects",
                            style: TextStyle(
                                color: Color(0xFF077183),
                                fontSize: 27,
                                fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text(" Contact us",
                            style: TextStyle(
                                color: Color(0xFF077183),
                                fontSize: 27,
                                fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text(" Join us",
                            style: TextStyle(
                                color: Color(0xFF077183),
                                fontSize: 27,
                                fontWeight: FontWeight.bold)),
                        onTap: () {},
                      ),
                    ],
                  );
                },
              );
            },
          ),
          actions: [
            Image.asset(
              'assets/img/logo.png',
              height: 100,
              width: 200,
            ),
            IconButton(
              icon: Icon(Icons.chat),
              color: Color(0xFF077183),
              iconSize: 45,
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(Icons.call),
                color: Color(0xFF077183),
                iconSize: 45,
                onPressed: () {}),
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(15, 15, 15, 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      // height: 180,
                      // width: 360,
                      child: ClipRRect(
                        child: Image.asset("assets/img/popo.png"),
                        borderRadius: BorderRadius.circular(25),
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 3, color: Color.fromARGB(255, 33, 164, 225)),
                        color: Color.fromARGB(66, 7, 191, 232),
                        borderRadius: BorderRadius.circular(15)),
                    width: 290,
                    child: TextField(
                        decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "enter yor mobile number to contact you",
                      hintStyle: TextStyle(fontSize: 15),
                      prefixIcon: Icon(Icons.phone),
                    )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Contact me",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(70, 25, 70, 25)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 16, 154, 178))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: const Align(
                      child: Text(
                        'SERVICES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          color: Color(0xFF077183),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/img/app2.png",
                            // fit: BoxFit.contain,
                            // height: 250,
                            // width: 150,
                          ),
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(160, 180),
                            primary: Color.fromARGB(231, 255, 255, 255),
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/img/game1.png",
                            // fit: BoxFit.contain,
                            // height: 250,
                            // width: 150,
                          ),
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(160, 180),
                            primary: Color.fromARGB(231, 255, 255, 255),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/img/3.png",
                            // fit: BoxFit.contain,
                            // height: 250,
                            // width: 150,
                          ),
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(160, 180),
                            primary: Color.fromARGB(231, 255, 255, 255),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/img/4.png",
                            // fit: BoxFit.contain,
                            // height: 250,
                            // width: 150,
                          ),
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(160, 180),
                            primary: Color.fromARGB(231, 255, 255, 255),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/img/5.png",
                            // fit: BoxFit.contain,
                            // height: 250,
                            // width: 150,
                          ),
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(160, 180),
                            primary: Color.fromARGB(231, 255, 255, 255),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/img/6.png",
                            // fit: BoxFit.contain,
                            // height: 250,
                            // width: 150,
                          ),
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(160, 180),
                            primary: Color.fromARGB(231, 255, 255, 255),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/img/7.png",
                            // fit: BoxFit.contain,
                            // height: 250,
                            // width: 150,
                          ),
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(160, 180),
                            primary: Color.fromARGB(231, 255, 255, 255),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/img/8.png",
                            // fit: BoxFit.contain,
                            // height: 250,
                            // width: 150,
                          ),
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(160, 180),
                            primary: Color.fromARGB(231, 255, 255, 255),
                          ),
                        ),
                        // style: ButtonStyle(
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/services");
                },
                child: Text(
                  "show more>>",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF077183),
                      fontWeight: FontWeight.w300),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(20, 25, 20, 25)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(231, 254, 254, 254))),
              ),
              SizedBox(
                height: 40,
              ),

              SizedBox(
                height: 50,
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Align(
                  child: Text(
                    ' PROJECTS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      color: Color(0xFF077183),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/img/COM.png",
                      fit: BoxFit.contain,
                      height: 150,
                      width: 250,
                    ),
                    Image.asset("assets/img/our2.jpg"),
                    Image.asset(
                      "assets/img/ou1r.jpg",
                      fit: BoxFit.contain,
                      height: 150,
                      width: 250,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/works");
                },
                child: Text(
                  "show more>>",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF077183),
                      fontWeight: FontWeight.w300),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(20, 25, 20, 25)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(231, 254, 254, 254))),
              ),
              SizedBox(
                height: 40,
              ),

              SizedBox(
                height: 50,
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Align(
                  child: Text(
                    ' CUSTOMERS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      color: Color(0xFF077183),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/kjg.png"),
                      ),
                      SizedBox(
                        height: 15,
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/gf.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/images.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/lpp.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/wwew.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/uj.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/gf.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/ssa.jpg"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/img/kjg.png"),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 50,
                width: 15,
              ),
              // Container(
              //     margin: EdgeInsets.fromLTRB(15, 15, 15, 20),
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(13),
              //     ),
              //     // height: 180,
              //     // width: 360,
              //     child: ClipRRect(
              //       child: Image.asset("assets/img/ttt.jpg"),
              //       borderRadius: BorderRadius.circular(25),
              //     )),

              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Request your free consultation now",
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(70, 25, 70, 25)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 16, 154, 178))),
              ),
            ],
          ),
        ));
  }
}
