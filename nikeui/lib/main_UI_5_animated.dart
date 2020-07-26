//iPhone XR/XS Max/11 – 28

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final GlobalKey<ScaffoldState> _scaffoldstate = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldstate,
      backgroundColor: Colors.grey[100],
      drawer: MyAnimation(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    _scaffoldstate.currentState.openDrawer();
                  },
                  child: Icon(
                    Icons.short_text,
                    size: 30.0,
                  ),
                ),
                Image(
                    height: 200.0,
                    image: NetworkImage(
                        'https://cdn4.iconfinder.com/data/icons/flat-brand-logo-2/512/nike-512.png')),
                Row(
                  children: [
                    Icon(
                      Icons.bookmark_border,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 30.0,
                    )
                  ],
                )
              ],
            )),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover your',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 22,
                    color: const Color(0x7f282c40),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Favourite footwear',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 24,
                    color: const Color(0xff282c40),
                    letterSpacing: -0.648,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Search shoes',
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.grey[400], width: 1.0))),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.blue, width: 5.0))),
                          child: FlatButton(
                              onPressed: null,
                              child: Text(
                                'MEN',
                                style: TextStyle(color: Colors.blue),
                              ))),
                      FlatButton(onPressed: null, child: Text('WOMEN')),
                      FlatButton(onPressed: null, child: Text('KIDS')),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Running shoes',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        fontSize: 17,
                        color: const Color(0xff282c40),
                        letterSpacing: -0.459,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        fontSize: 11,
                        color: const Color(0xff4d79d7),
                        letterSpacing: -0.297,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                Container(
                  height: 300.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueGrey[100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Positioned(
                                    right: 5.0, child: Icon(Icons.bookmark)),
                                Image(
                                    height: 240.0,
                                    width: 250.0,
                                    image: NetworkImage(
                                        'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png')),
                                Positioned(
                                  bottom: 5.0,
                                  right: 0.0,
                                  left: 0.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Nike Air Max'),
                                          Text(
                                            '\$45',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 27,
                                              color: const Color(0xff282c40),
                                              letterSpacing: -0.729,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 56.0,
                                        height: 54.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                          color: const Color(0xff4d79d7),
                                        ),
                                        child: Icon(
                                          Icons.shopping_basket,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueGrey[100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Positioned(
                                    right: 5.0, child: Icon(Icons.bookmark)),
                                Image(
                                    height: 240.0,
                                    width: 250.0,
                                    image: NetworkImage(
                                        'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png')),
                                Positioned(
                                  bottom: 5.0,
                                  right: 0.0,
                                  left: 0.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Nike Air Max'),
                                          Text(
                                            '\$45',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 27,
                                              color: const Color(0xff282c40),
                                              letterSpacing: -0.729,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 56.0,
                                        height: 54.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                          color: const Color(0xff4d79d7),
                                        ),
                                        child: Icon(
                                          Icons.shopping_basket,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueGrey[100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Positioned(
                                    right: 5.0, child: Icon(Icons.bookmark)),
                                Image(
                                    height: 240.0,
                                    width: 250.0,
                                    image: NetworkImage(
                                        'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png')),
                                Positioned(
                                  bottom: 5.0,
                                  right: 0.0,
                                  left: 0.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Nike Air Max'),
                                          Text('\$45'),
                                        ],
                                      ),
                                      Container(
                                        width: 56.0,
                                        height: 54.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                          color: const Color(0xff4d79d7),
                                        ),
                                        child: Icon(
                                          Icons.shopping_basket,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueGrey[100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Positioned(
                                    right: 5.0, child: Icon(Icons.bookmark)),
                                Image(
                                    height: 240.0,
                                    width: 250.0,
                                    image: NetworkImage(
                                        'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png')),
                                Positioned(
                                  bottom: 5.0,
                                  right: 0.0,
                                  left: 0.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Nike Air Max'),
                                          Text(
                                            '\$45',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 27,
                                              color: const Color(0xff282c40),
                                              letterSpacing: -0.729,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 56.0,
                                        height: 54.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                          color: const Color(0xff4d79d7),
                                        ),
                                        child: Icon(
                                          Icons.shopping_basket,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueGrey[100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Positioned(
                                    right: 5.0, child: Icon(Icons.bookmark)),
                                Image(
                                    height: 240.0,
                                    width: 250.0,
                                    image: NetworkImage(
                                        'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png')),
                                Positioned(
                                  bottom: 5.0,
                                  right: 0.0,
                                  left: 0.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Nike Air Max'),
                                          Text(
                                            '\$45',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 27,
                                              color: const Color(0xff282c40),
                                              letterSpacing: -0.729,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 56.0,
                                        height: 54.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                          color: const Color(0xff4d79d7),
                                        ),
                                        child: Icon(
                                          Icons.shopping_basket,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueGrey[100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Positioned(
                                    right: 5.0, child: Icon(Icons.bookmark)),
                                Image(
                                    height: 240.0,
                                    width: 250.0,
                                    image: NetworkImage(
                                        'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png')),
                                Positioned(
                                  bottom: 5.0,
                                  right: 0.0,
                                  left: 0.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Nike Air Max'),
                                          Text('\$45'),
                                        ],
                                      ),
                                      Container(
                                        width: 56.0,
                                        height: 54.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                          color: const Color(0xff4d79d7),
                                        ),
                                        child: Icon(
                                          Icons.shopping_basket,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends AnimatedWidget {
  MyDrawer({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    print(animation.value);
    return Container(
        color: Colors.blueAccent,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.photo_size_select_actual,
                size: 60.0,
              ),
              title: Text(
                'Elayamani',
                style: TextStyle(
                  fontFamily: 'Futura',
                  fontSize: 17,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.323,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                'Chennai',
                style: TextStyle(
                  fontFamily: 'Futura',
                  fontSize: 11,
                  color: const Color(0xa6ffffff),
                  letterSpacing: 0.209,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueAccent,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.monetization_on,
                                color: Colors.white54,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'WOMEN',
                                    style: TextStyle(
                                      fontFamily: 'Futura',
                                      fontSize: 15,
                                      color: const Color(0xffffffff),
                                      letterSpacing: 0.285,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Casual Shoes',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Sports Shoes',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Flipflops',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Sandals',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Floaters',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white54,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueAccent,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.monetization_on,
                                color: Colors.white54,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'MEN',
                                    style: TextStyle(
                                      fontFamily: 'Futura',
                                      fontSize: 15,
                                      color: const Color(0xffffffff),
                                      letterSpacing: 0.285,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Casual Shoes',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Sports Shoes',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Flipflops',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Sandals',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Floaters',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white54,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueAccent,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.monetization_on,
                                color: Colors.white54,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'KIDS',
                                    style: TextStyle(
                                      fontFamily: 'Futura',
                                      fontSize: 15,
                                      color: const Color(0xffffffff),
                                      letterSpacing: 0.285,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Casual Shoes',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Sports Shoes',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Flipflops',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Sandals',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Floaters',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 14,
                                              color: Colors.white30,
                                              letterSpacing: 0.266,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white54,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(children: [
                      Positioned(
                        left: MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width /
                                animation.value -
                            20,
                        top: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                color: Colors.white54,
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height / 1.3 -
                                        40,
                              )),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width / animation.value,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height / 1.3,
                                child: AbsorbPointer(child: MyApp())),
                          ),
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

class MyAnimation extends StatefulWidget {
  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    animation = Tween<double>(begin: 2.1, end: 1.5).animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          //_controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      })
      ..addStatusListener((state) => print('$state'));
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyDrawer(
      animation: animation,
    );
  }
}
