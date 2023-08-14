import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:pure_code_app/home.dart';
import 'package:pure_code_app/services.dart';
import 'package:pure_code_app/works.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => Contact(), // Wrap your app
      ),
    );

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      },
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Services(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(" Our Projects",
                          style: TextStyle(
                              color: Color(0xFF077183),
                              fontSize: 27,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Works(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(" Contact us",
                          style: TextStyle(
                              color: Color(0xFF077183),
                              fontSize: 27,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Contact(),
                          ),
                        );
                      },
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
          );
        },
        backgroundColor: Color(0xFF077183),
        splashColor: Color.fromARGB(222, 14, 5, 80),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        child: Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            ClipRRect(
              child: Image.asset(
                "assets/img/p1.jpg",
                fit: BoxFit.contain,
                height: 80,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: const Align(
                child: Text(
                  'Contact us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 33,
                    color: Color(0xFF077183),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromARGB(133, 127, 223, 215),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black38),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color.fromARGB(133, 127, 223, 215),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black38),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color.fromARGB(133, 127, 223, 215),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Phone",
                  hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black38),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              width: 360,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(133, 127, 223, 215),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Message",
                  hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black38),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 1),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200),
                  topLeft: Radius.circular(200),
                ),
              ),
              width: 320,
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Send",
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
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
