import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => Works(), // Wrap your app
      ),
    );

class Works extends StatelessWidget {
  const Works({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    'OUR WORK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 33,
                      color: Color(0xFF077183),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Align(
                  child: Text(
                    'You can visit the site by clicking on the button',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: Color.fromARGB(255, 15, 161, 168)),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "assets/img/our2.jpg",
                      fit: BoxFit.cover,
                      height: 200,
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'You can visit the site by clicking on the buttonYou can visit the site by clicking on the button...',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 15, 161, 168),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "View site",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(30, 20, 30, 20)),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF077183)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "assets/img/COM.png",
                      fit: BoxFit.cover,
                      height: 200,
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'You can visit the site by clicking on the buttonYou can visit the site by clicking on the button...',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF077183),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "View site",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(30, 20, 30, 20)),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF077183)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "assets/img/ou1r.jpg",
                      fit: BoxFit.cover,
                      height: 200,
                      width: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'You can visit the site by clicking on the buttonYou can visit the site by clicking on the button...',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF077183),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "View site",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(30, 20, 30, 20)),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF077183)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ));
  }
}
