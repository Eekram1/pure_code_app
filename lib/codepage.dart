import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:pure_code_app/contact.dart';
import 'package:pure_code_app/mobileapp.dart';
import 'package:pure_code_app/services.dart';
import 'package:pure_code_app/works.dart';

import 'home.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => Mobileapp(), // Wrap your app
      ),
    );

class Mobileapp extends StatelessWidget {
  const Mobileapp({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ],
           
          ),
        )
        );
  }
}
