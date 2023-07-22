import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(fontFamily: GoogleFonts.poppins().fontFamily),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back),
                        Spacer(),
                        Icon(Icons.menu)
                      ],
                    ),
                  ),
                  Stack(children: [
                    const Align(
                        alignment: Alignment.topCenter,
                        child: Icon(
                          Icons.pin_drop,
                          size: 150,
                          color: Color(0xffF0F0F0),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 90.0, right: 20, left: 20),
                      child: Image.asset(
                        "assets/car.png",
                        width: 380,
                      ),
                    ),
                  ]),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 8.0, left: 8.0, top: 15),
                    child: Row(
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.apple,
                            size: 50,
                          )),
                          TextSpan(
                              text: "Park",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25))
                        ])),
                        Spacer(),
                        const Text(
                          "\$3 / hr",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xff252525),
              height: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "End Time",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Today",
                                style: TextStyle(color: Colors.black),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Tomorrow",
                                style: TextStyle(color: Colors.white),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Later",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                      const Text(
                        "10:40 pm",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.alarm,
                          size: 30,
                          color: Colors.white,
                        )),
                        TextSpan(
                            text: "Alert me 15 minutes before",
                            style: TextStyle(color: Colors.white, fontSize: 16))
                      ])),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: SliderButton(
                              backgroundColor: Color(0xffd3d3d3),
                              action: () {},
                              label: const Text(
                                "Slide to park",
                                style: TextStyle(
                                    color: Color(0xff4a4a4a),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                              ),
                              icon: const Icon(
                                Icons.keyboard_double_arrow_right,
                                size: 30,
                              )),
                        ),
                      )
                    ]),
              ),
            )
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
