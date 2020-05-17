import 'package:flightsui/contstants.dart';
import 'package:flutter/material.dart';

import 'selectflightspage.dart';

class Eticket extends StatefulWidget {
  @override
  _EticketState createState() => _EticketState();
}

class _EticketState extends State<Eticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
          child: Container(
            color: Colors.black,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 28.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                                Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => SelectFlights()));
                      },
                                          child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    // Adobe XD layer: 'Search Flights' (text)
                    SizedBox(
                      width: 84.0,
                      child: Text(
                        'E-Ticket',
                        style: TextStyle(
                          fontFamily: 'TT Norms',
                          fontSize: 20,
                          color: const Color(0xffffffff),
                          letterSpacing: 0.16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(100.0),
      ),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Container(
            height: 700.0,
            child: Stack(children: [
              Container(
                height: double.infinity,
                color: bgcolor,
              ),
              Container(
                height: 150.0,
                color: Colors.black,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Eticket()));
                    },
                    child: Text('Refresh'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Stack(
                    children:
                        List.generate(maxitem, (index) => Tickets(index))),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.share),
                        Text('Share with Friend and family')
                      ],
                    )),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class Tickets extends StatefulWidget {
  final int index;

  const Tickets(this.index);
  @override
  _TicketsState createState() => _TicketsState();
}

int maxitem = 3;

class _TicketsState extends State<Tickets> {
  List<double> toppos = List<double>();
  List<double> rightpos = List<double>();

  @override
  void initState() {
    for (int i = 0; i <= widget.index; i++) {
      toppos.add(0);
      rightpos.add(0);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: toppos[widget.index],
      right: rightpos[widget.index],
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          setState(() {
            rightpos[widget.index] = rightpos[widget.index] + 400;
          });
        },
        child: IntrinsicHeight(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                      color: Colors.white),
                  padding: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Business class'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 70.0),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('SLM'),
                                    SizedBox(width: 10.0),
                                    Icon(Icons.flight_takeoff),
                                    SizedBox(width: 10.0),
                                    Text('BTL'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 25.0),
                        Align(
                            alignment: Alignment.center,
                            child: Text('4 Flight Tickets')),
                        SizedBox(height: 25.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Passengers'),
                                SizedBox(height: 5.0),
                                Text('2 Adults'),
                                SizedBox(height: 20.0),
                                Text('Flight No.'),
                                SizedBox(height: 5.0),
                                Text('BKN8'),
                                SizedBox(height: 20.0),
                                Text('Class'),
                                SizedBox(height: 5.0),
                                Text('Business'),
                              ],
                            ),
                            SizedBox(width: 70.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Date'),
                                SizedBox(height: 5.0),
                                Text('12 Feb, 2020'),
                                SizedBox(height: 20.0),
                                Text('Gate'),
                                SizedBox(height: 5.0),
                                Text('66 B'),
                                SizedBox(height: 20.0),
                                Text('Seat'),
                                SizedBox(height: 5.0),
                                Text('21 B')
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: Colors.white,
                    height: 40.0,
                    child: Center(
                      child: CustomPaint(painter: DrawDottedhorizontalline()),
                    ),
                  ),
                ),
                Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[600], offset: Offset(0, 15)),
                            BoxShadow(
                                color: Colors.grey[350], offset: Offset(0, 10))
                          ],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(38.0),
                        child: Image.asset(
                          'assets/barcode.png',
                          width: 300.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[600], offset: Offset(0, 15)),
                            BoxShadow(
                                color: Colors.grey[350], offset: Offset(0, 10))
                          ],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(38.0),
                        child: Image.asset(
                          'assets/barcode.png',
                          width: 300.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, 0.0);

    path.quadraticBezierTo(30, size.height / 2, 0, size.height);

    path.lineTo(size.width, size.height);

    path.quadraticBezierTo(size.width - 30, size.height / 2, size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class DrawDottedhorizontalline extends CustomPainter {
  Paint _paint;

  DrawDottedhorizontalline() {
    _paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -300; i < 300; i = i + 15) {
      if (i % 3 == 0)
        canvas.drawLine(Offset(i, 0.0), Offset(i + 10, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
