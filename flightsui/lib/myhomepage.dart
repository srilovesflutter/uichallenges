import 'package:flightsui/contstants.dart';
import 'package:flutter/material.dart';

import 'selectflightspage.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity,
            color: bgcolor,
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                             SizedBox(
                                  height: 40.0,
                                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Search Flights',
                        style: TextStyle(
                          fontFamily: 'TT Norms',
                          fontSize: 26,
                          color: const Color(0xff1e2432),
                          letterSpacing: 0.20800000000000002,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  ButtonBar(
                    buttonPadding: EdgeInsets.symmetric(horizontal: 15.0),
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color(0xff000000),
                        ),
                        child: Expanded(
                          child: FlatButton(
                            onPressed: null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  child: Icon(Icons.arrow_forward),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10.0, 10.0)),
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'One Way',
                                  style: TextStyle(
                                    fontFamily: 'TT Norms',
                                    fontSize: 11,
                                    color: const Color(0xffffffff),
                                    letterSpacing: 0.21153849220275878,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Expanded(
                          child: FlatButton(
                            onPressed: null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  child: Icon(
                                    Icons.compare_arrows,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10.0, 10.0)),
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'Round Trip',
                                  style: TextStyle(
                                    fontFamily: 'TT Norms',
                                    fontSize: 11,
                                    letterSpacing: 0.21153849220275878,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Expanded(
                          child: FlatButton(
                            onPressed: null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  child: Icon(
                                    Icons.refresh,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10.0, 10.0)),
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'Multi City',
                                  style: TextStyle(
                                    fontFamily: 'TT Norms',
                                    fontSize: 11,
                                    letterSpacing: 0.21153849220275878,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                  border: InputBorder.none,
                                  prefixIcon: Column(
                                    children: <Widget>[
                                      Icon(Icons.flight_takeoff),
                                      Icon(Icons.more_vert),
                                    ],
                                  ),
                                  filled: true,
                                  labelText: 'From',
                                  hintText: 'Enter Place'),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                  border: InputBorder.none,
                                  prefixIcon: Column(
                                    children: <Widget>[
                                      Icon(Icons.more_vert),
                                      Icon(Icons.place),
                                    ],
                                  ),
                                  filled: true,
                                  labelText: 'To',
                                  hintText: 'Enter Place'),
                            ),
                          ),
                        ],
                      ),
                      Positioned.fill(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: const Color(0xff000000),
                                ),
                                child: FlatButton(
                                    onPressed: null,
                                    child: Icon(
                                      Icons.swap_vert,
                                      color: Colors.white,
                                    ))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.date_range),
                                filled: true,
                                labelText: 'Departure Date',
                                hintText: 'Pick Date'),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Flexible(
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.access_time),
                                filled: true,
                                labelText: 'Time',
                                hintText: 'Pick Time'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.airline_seat_legroom_extra),
                          filled: true,
                          labelText: 'Class',
                          hintText: 'Pick Class'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.people),
                          filled: true,
                          labelText: 'Travellers',
                          hintText: 'How many are Travelling?'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SelectFlights()));
                        },
                        child: Text(
                          'Search Flights',
                          style: TextStyle(
                            fontFamily: 'TT Norms',
                            fontSize: 16,
                            color: const Color(0xffffffff),
                            letterSpacing: 0.16,
                            fontWeight: FontWeight.w500,
                            height: 1.25,
                          ),
                        )),
                    width: 330.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                      color: Colors.white
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                    height: 20.0,
                  ),
                        Container(
                          width: 70.0,
                          height: 5.0,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Search Flights',
                              style: TextStyle(
                                fontFamily: 'TT Norms',
                                fontSize: 18,
                                color: const Color(0xff1e2432),
                                letterSpacing: 0.14400000000000002,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.attach_money),
                              title: Text('See Cheapest Flights'),
                              subtitle: Text('to visit New Delhi India'),
                            ),
                            ListTile(
                              leading: Icon(Icons.attach_money),
                              title: Text('See Cheapest Flights'),
                              subtitle: Text('to visit Mumbai India'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}


