import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(
                  // color: Colors.purple,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(70)),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 0, 34, 62),
                    Color.fromARGB(255, 95, 163, 219)
                  ])),
              child: Center(
                child: Image.asset("assets/moon-surface.jpg", scale: 1.5),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 0, 34, 62),
                    Color.fromARGB(255, 95, 163, 219)
                  ]),
                  // color: Colors.purple,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Depth estimation prediction",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          // "1/1 [==========] - 0s 107ms/step \n 1/1 [==========] - 0s 101ms/step \n 1/1 [==========] - 0s 109ms/step",
                          "X: [[424.059]] \n Y: [[641.19366]] \n Z: [[87.84653]]",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                      SizedBox(height: 60),

                      // Material(
                      //   color: Colors.purple,
                      //   borderRadius: BorderRadius.circular(10),
                      //   child: InkWell(

                      //     child: Container(
                      //       padding: EdgeInsets.symmetric(
                      //           vertical: 15, horizontal: 80),
                      //       child: Text(
                      //         "Get Start",
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 22,
                      //           fontWeight: FontWeight.bold,
                      //           letterSpacing: 1,
                      //         ),
                      //       ),
                      //     ),
                      //  ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
