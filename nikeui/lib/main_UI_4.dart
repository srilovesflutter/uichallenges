import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        actions: [IconButton(icon: Icon(Icons.cancel), onPressed: null)],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueAccent,
        child: Center(
          child: Stack(
            children: [
              Positioned(
                  left: 30.0,
                  top: 20.0,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
              Positioned(
                  right: 100.0,
                  top: 60.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.white54, shape: BoxShape.circle),
                  )),
              Positioned(
                  left: 100.0,
                  top: 100.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.white30, shape: BoxShape.circle),
                  )),
              Positioned(
                  right: 100.0,
                  top: 260.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.white38, shape: BoxShape.circle),
                  )),
              Positioned(
                  right: 150.0,
                  top: 460.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.white54, shape: BoxShape.circle),
                  )),
              Positioned(
                  left: 100.0,
                  top: 500.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.white54, shape: BoxShape.circle),
                  )),
              Positioned(
                  left: 50.0,
                  top: 400.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.white30, shape: BoxShape.circle),
                  )),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 90.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'ORDER PLACED',
                    style: TextStyle(
                      fontFamily: 'Futura',
                      fontSize: 21,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent[100],
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Row(
                              children: [
                                Text(
                                  'Expected Delivery',
                                  style: TextStyle(
                                    fontFamily: 'Futura',
                                    fontSize: 16,
                                    color: const Color(0x4fffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  '13 DEC',
                                  style: TextStyle(
                                    fontFamily: 'Futura',
                                    fontSize: 17,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
