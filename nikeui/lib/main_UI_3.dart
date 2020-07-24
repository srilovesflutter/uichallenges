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
        leading: Icon(Icons.arrow_back_ios),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.blueAccent,
        child: FlatButton(
            onPressed: null,
            child: Text(
              'PAY \$50',
              style: TextStyle(color: Colors.white),
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Payment method',
              style: TextStyle(
                fontFamily: 'Futura',
                fontSize: 24,
                color: const Color(0xff282c40),
                letterSpacing: -0.648,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.6,
                          0.0), // 10% of the width, so there are ten blinds.
                      colors: [
                        //#233C67 26406E
                        const Color(0xFF233C67),
                        const Color(0xFF26406E),
                      ], // whitish to gray
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    )),
                // color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(
                            height: 20.0,
                            width: 50.0,
                            image: NetworkImage(
                                'http://www.cosgroveny.com/wp-content/uploads/logos/visa-white-shadow.png'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                size: 10.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                '4567',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'CARD HOLDER',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 11,
                                  color: const Color(0x44ffffff),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'ELAYAMANIK',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 13,
                                  color: const Color(0xffffffff),
                                  letterSpacing: 0.481,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'EXPIRES',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 11,
                                  color: const Color(0x44ffffff),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '3 MARCH',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 13,
                                  color: const Color(0xffffffff),
                                  letterSpacing: 0.481,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'CVV',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 11,
                                  color: const Color(0x44ffffff),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '907',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 13,
                                  color: const Color(0xffffffff),
                                  letterSpacing: 0.481,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    ));
  }
}
