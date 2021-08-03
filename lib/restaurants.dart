import 'package:flutter/material.dart';

class RestaurantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  width: 170,
                  child: Stack(
                    children: [
                      //image
                      ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(36.0)),
                          child: Image.asset(
                              "assets/images/burger_with_drink.png")),
                      //restaurant title
                      Positioned(
                        top: 14,
                        left: 12,
                        child: Text(
                          'KFC 1',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      //rating text
                      Positioned(
                        top: 42,
                        left: 12,
                        child: Text(
                          '4.5⭑',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  width: 170,
                  child: Stack(
                    children: [
                      //image
                      ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(36.0)),
                          child: Image.asset(
                              "assets/images/burger_with_fries.png")),
                      //restaurant title
                      Positioned(
                        top: 14,
                        left: 12,
                        child: Text(
                          'KFC 2',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      //rating text
                      Positioned(
                        top: 42,
                        left: 12,
                        child: Text(
                          '4.5⭑',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  width: 170,
                  child: Stack(
                    children: [
                      //image
                      ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(36.0)),
                          child: Image.asset(
                              "assets/images/burger_with_drink.png")),
                      //restaurant title
                      Positioned(
                        top: 14,
                        left: 12,
                        child: Text(
                          'KFC 3',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      //rating text
                      Positioned(
                        top: 42,
                        left: 12,
                        child: Text(
                          '4.5⭑',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
