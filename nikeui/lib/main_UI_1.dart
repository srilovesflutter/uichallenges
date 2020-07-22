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

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[200],
      //   centerTitle: true,
      //   leading: Icon(
      //     Icons.short_text,
      //     color: Colors.black,
      //   ),
      //   title: Image(
      //       height: 80.0,
      //       image: NetworkImage(
      //           'https://cdn4.iconfinder.com/data/icons/flat-brand-logo-2/512/nike-512.png')),
      //   actions: [
      //     IconButton(icon: Icon(Icons.bookmark_border), onPressed: null),
      //     IconButton(icon: Icon(Icons.shopping_cart), onPressed: null)
      //   ],
      // ),

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.short_text,
                  size: 30.0,
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

      body: SingleChildScrollView(
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
                  fontWeight: FontWeight.w500,
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
    );
  }
}
