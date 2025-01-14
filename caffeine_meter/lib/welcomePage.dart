// ignore_for_file: unused_import, file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, unused_element, no_leading_underscores_for_local_identifiers, avoid_print
import 'package:caffeine_meter/homepage.dart';
import 'package:caffeine_meter/main.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffff7094),
                  Color.fromARGB(255, 23, 2, 33),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 350,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          width: 130,
                        ),
                        Text(
                          "Caffeine Meter",
                          style: TextStyle(
                            fontSize: 29,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Container(
                        width: 300,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 1,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.resolveWith((states) {
                              if (states.contains(WidgetState.pressed)) {
                                return Color.fromARGB(255, 127, 213, 160);
                              }
                              return Colors.white;
                            }),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    30), // Köşe yuvarlatma yarıçapı
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
