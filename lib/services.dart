import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => Services(), // Wrap your app
      ),
    );

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

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
                  'OUR SERVICES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 33,
                    color: Color(0xFF077183),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1100,
              child: Center(
                child: Wrap(
                  direction: Axis.vertical,
                  spacing: 10,
                  runSpacing: 11,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/img/app2.png",
                          fit: BoxFit.contain,
                          height: 250,
                          width: 150,
                        ),
                        // Text(
                        //   "CLICK",
                        //   style: TextStyle(fontSize: 27),
                        // ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 250, 250, 250)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/img/4.png",
                          fit: BoxFit.contain,
                          height: 250,
                          width: 150,
                        ),
                        // Text(
                        //   "CLICK",
                        //   style: TextStyle(fontSize: 27),
                        // ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 250, 250, 250)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/img/6.png",
                          fit: BoxFit.contain,
                          height: 250,
                          width: 150,
                        ),
                        // Text(
                        //   "CLICK",
                        //   style: TextStyle(fontSize: 27),
                        // ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 250, 250, 250)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/img/8.png",
                          fit: BoxFit.contain,
                          height: 250,
                          width: 150,
                        ),
                        // Text(
                        //   "CLICK",
                        //   style: TextStyle(fontSize: 27),
                        // ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 250, 250, 250)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/img/game1.png",
                          fit: BoxFit.contain,
                          height: 250,
                          width: 150,
                        ),
                        // Text(
                        //   "CLICK",
                        //   style: TextStyle(fontSize: 27),
                        // ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 250, 250, 250)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/img/3.png",
                          fit: BoxFit.contain,
                          height: 250,
                          width: 150,
                        ),
                        // Text(
                        //   "CLICK",
                        //   style: TextStyle(fontSize: 27),
                        // ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 250, 250, 250)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/img/5.png",
                          fit: BoxFit.contain,
                          height: 250,
                          width: 150,
                        ),
                        // Text(
                        //   "CLICK",
                        //   style: TextStyle(fontSize: 27),
                        // ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 250, 250, 250)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/img/7.png",
                          fit: BoxFit.contain,
                          height: 250,
                          width: 150,
                        ),
                        // Text(
                        //   "CLICK",
                        //   style: TextStyle(fontSize: 27),
                        // ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 250, 250, 250)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
