import 'package:flightsui/contstants.dart';
import 'package:flutter/material.dart';

import 'eticket.dart';
import 'myhomepage.dart';

class SelectFlights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 28.0),
                    child: Container(
            color: bgcolor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              GestureDetector(
                 onTap: (){
                                Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
                      },
                child: Icon(Icons.arrow_back)),
              Text(
    'Select Flight',
    style: TextStyle(
      fontFamily: 'TT Norms',
      fontSize: 20,
      color: const Color(0xff1e2432),
      letterSpacing: 0.16,
      fontWeight: FontWeight.w500,
    ),
    textAlign: TextAlign.left,
  ),
  Icon(Icons.more_vert)
            ],),
          ),
                  ),
        ),
        preferredSize: Size.fromHeight(100.0),
      ),
      body: Stack(children: [
        Container(
          height: double.infinity,
          color: Color(0xfff6f9ff),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
    'Your Trip',
    style: TextStyle(
      fontFamily: 'TT Norms',
      fontSize: 15,
      color: const Color(0x99616f8d),
      letterSpacing: 0.28846158027648927,
    ),
    textAlign: TextAlign.left,
  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                              Text(
    'AMS - DEL',
    style: TextStyle(
      fontFamily: 'TT Norms',
      fontSize: 26,
      color: const Color(0xff000000),
      letterSpacing: 0.500000072479248,
      fontWeight: FontWeight.w700,
    ),
    textAlign: TextAlign.left,
  ),
                        SizedBox(width: 20.0),
                        Container(
                          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: const Color(0xffcad1de),
          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('One Way', style: TextStyle(
              fontFamily: 'TT Norms',
              fontSize: 10,
              color: const Color(0xffffffff),
              letterSpacing: 0.19230772018432618,
            ),),
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
                Text(
    '12 Feb, 2020',
    style: TextStyle(
      fontFamily: 'TT Norms',
      fontSize: 13,
      color: const Color(0xff616f8d),
      letterSpacing: 0.250000036239624,
    ),
    textAlign: TextAlign.left,
  ),
          SizedBox(height: 30.0),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(10, (index) => listItems(context)),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

Widget listItems(BuildContext context) {
  return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Eticket()));
      },
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 18.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset('assets/british.png', width: 100.0, height: 100.0, fit: BoxFit.fitHeight)
                      
                    ],
                  ),
                  Text('100\$'),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[Text('8:00 Pm'), Text('AMS, Mon')],
                  ),
                  Icon(Icons.flight_takeoff),
                  Column(
                    children: <Widget>[Text('2:00 Pm'), Text('DEL, Tue')],
                  ),
                  Column(
                    children: <Widget>[Text('Flight No.'), Text('BKN8')],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text('Duration:'),
                  SizedBox(width: 10.0),
                  Text('17h 15m'),
                  SizedBox(width: 10.0),
                  Text('Non - Stop')
                ],
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ));
}
