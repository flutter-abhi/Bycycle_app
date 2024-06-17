import 'dart:ui';

import 'package:bycycle/view/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:google_fonts/google_fonts.dart";

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.5, 0.5],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(36, 44, 59, 1), // Dark blue color
                  Color.fromRGBO(75, 76, 237, 1), // // Lighter blue color
                ],
              ),
            ),
          ),
          // Extreme text
          Positioned(
            top: 100,
            right: -30,
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                'EXTREME',
                style: GoogleFonts.allertaStencil(
                  fontSize: 120,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(255, 159, 156, 156),
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          // Background bike image
          Positioned(
            top: 230,
            left: 20,
            child: Transform(
              alignment: Alignment.bottomCenter,
              transform: Matrix4.identity()..scale(-1.0, 1.0),
              child: SizedBox(
                height: 400,
                width: 400,
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2FgetStarted%2Fbi1.png?alt=media&token=d6484fa4-78de-40ad-8dcc-0f499992a5d5', // Make sure to add the bike image in assets folder and mention it in pubspec.yaml
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Positioned(
            top: 45,
            right: 150,
            child: Image.network(
              "https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2FgetStarted%2Flogo.png?alt=media&token=d3f4f36e-08c1-4506-bed7-f6196f34f480",
              height: 50,
              width: 70,
            ),
          ),

          // Get Start button

          Positioned(
            bottom: 25,
            right: -40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              child: Container(
                height: 70,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38),
                    color: const Color.fromRGBO(36, 44, 59, 1),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(-3, 4),
                        blurRadius: 4,
                      ),
                    ]),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(75, 76, 237, 1),
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 4,
                              color: const Color.fromRGBO(239, 186, 51, 1))),
                      child: const Icon(
                        Icons.navigate_next,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Get Start",
                      style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
