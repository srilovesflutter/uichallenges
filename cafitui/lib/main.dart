import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Onboarding());
  }
}

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
    );

    return Scaffold(
      body: Container(
        width: 700.0,
        height: 700.0,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: const Alignment(0, -0.33),
            radius: 1,
            colors: [
              Colors.white, // yellow sun
              Color(0xffffded1),
              Color(0xffffded1),
              Color(0xffffb494),
              Color(0xffffb494),
              Color(0xffff9b70),
            ],
            stops: [0.45, 0.45, 0.6, 0.6, 0.7, 0.7],
          ),
        ),
        child: Stack(children: [
          PageView(
            onPageChanged: (i) {
              setState(() {
                index = i;
                print(index);
              });
            },
            controller: controller,
            children: [
              Stack(children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Have a good health',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 24,
                              color: const Color(0xffff9b70),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 80.0),
                        Image.asset(
                          'assets/womentrunningintro.png',
                          fit: BoxFit.none,
                        ),
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                          child: Container(
                            width: 224.8,
                            height: 35.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(112.38, 17.92)),
                              color: Color(0xffffe5da).withOpacity(0.5),
                            ),
                          ),
                        ),
                         SizedBox(height: 40.0),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 312.0,
                            child: Text(
                              'Being healthy is all, no health is nothing. \nSo why do not we',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                                color: const Color(0xffffffff),
                                height: 1.5714285714285714,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              Stack(children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Be Stronger',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 24,
                              color: const Color(0xffff9b70),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 80.0),
                        Image.asset(
                          'assets/womenliftingintro.png',
                          fit: BoxFit.none,
                        ),
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                          child: Container(
                            width: 224.8,
                            height: 35.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(112.38, 17.92)),
                              color: Color(0xffffe5da).withOpacity(0.5),
                            ),
                          ),
                        ),
                         SizedBox(height: 40.0),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 312.0,
                            child: Text(
                              'Take 30 minutes of bodybuilding every day \nto get physically fit and healthy.',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                                color: const Color(0xffffffff),
                                height: 1.5714285714285714,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              Stack(children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Have nice body',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 24,
                              color: const Color(0xffff9b70),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 35.0),
                        Image.asset(
                          'assets/coupleintro.png',
                          fit: BoxFit.none,
                        ),
                        SizedBox(height: 25.0),
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                          child: Container(
                            width: 224.8,
                            height: 35.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(112.38, 17.92)),
                              color: Color(0xffffe5da).withOpacity(0.5),
                            ),
                          ),
                        ),
                         SizedBox(height: 10.0),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 312.0,
                            child: Text(
                              'Bad body shape, poor sleep, lack of strength, \nweight gain, weak bones, easily traumatized\n body, depressed, stressed, poor metabolism,\n poor resistance',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                                color: const Color(0xffffffff),
                                height: 1.5714285714285714,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.brightness_1,
                        color: index == 0 ? Colors.white : Color(0XFFffcdb8),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.brightness_1,
                        color: index == 1 ? Colors.white : Color(0XFFffcdb8),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.brightness_1,
                        color: index == 2 ? Colors.white : Color(0XFFffcdb8),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    padding:
                        EdgeInsets.symmetric(horizontal: 150.0, vertical: 15.0),
                    onPressed: () {},
                    child: Text('Start'),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
