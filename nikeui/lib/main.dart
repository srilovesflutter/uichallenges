import 'package:flutter/material.dart';

void main() {
  runApp(MyPage2());
}

class MyPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage2Content(),
    );
  }
}

class MyPage2Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Icons.arrow_back_ios,
                  size: 30.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.bookmark,
                      size: 30.0,
                    ),
                  ],
                )
              ],
            )),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(children: [
              Positioned(
                left: -150.0,
                child: Container(
                  width: 400.0,
                  height: 400.0,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                ),
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  child: Center(child: Text('\$45')),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
              ),
              Positioned(
                bottom: 50.0,
                left: 0.0,
                right: 0.0,
                child: Image(
                    height: 240.0,
                    width: 350.0,
                    image: NetworkImage(
                        'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png')),
              ),
            ]),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nick Air Max',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        fontSize: 23,
                        color: const Color(0xff282c40),
                        letterSpacing: -0.621,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(22)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'ADD TO BAG',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                fontSize: 10,
                                color: const Color(0xff282c40),
                                letterSpacing: -0.27,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.shopping_basket)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey[400],
                        )
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text('4.1'),
                          Icon(Icons.star),
                          Text('|'),
                          Text('(340)')
                        ],
                      ),
                    )
                  ],
                ),
                Text(
                  'The Nike GTX shoe borrows design lines from The heritage runners the Nike Reach tech.',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 16,
                    color: const Color(0x63282c40),
                    letterSpacing: 0.336,
                    fontWeight: FontWeight.w500,
                    height: 1.8125,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Size',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 16,
                    color: const Color(0xff282c40),
                    letterSpacing: -0.432,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Container(
                      child: Text('5.5'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Text('6'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Text('6.5'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Text('7'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Text('7.5'),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  'Colour shown',
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 16,
                    color: const Color(0xff282c40),
                    letterSpacing: -0.432,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: FlatButton(
            onPressed: null,
            child: Text(
              'BUY NOW',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
