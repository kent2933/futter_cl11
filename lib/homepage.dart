import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import './restaurants.dart';
import './hotels.dart';
import './travel.dart';
import './data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 450,
                width: double.infinity,
                child: Swiper(
                    itemHeight: 500.0,
                    itemWidth: 500,
                    layout: SwiperLayout.CUSTOM,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    // outer: true,
                    customLayoutOption: CustomLayoutOption(
                            startIndex: 0, stateCount: 4)
                        .addTranslate([
                      Offset(0, 30),
                      Offset(0, 0),
                      Offset(0, -35),
                      Offset(400, -300),
                    ]) //translate
                        .addOpacity([0.3, 0.5, 1, 1, 0.1]) //opacity
                        .addScale([0.8, 0.89, 1, 1, 0.8], Alignment(1.0, 1.0)),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          ShaderMask(
                            blendMode: BlendMode.multiply,
                            shaderCallback: (bounds) => LinearGradient(
                              begin: Alignment(0.0, -0.9),
                              end: Alignment(0.0, 1),
                              colors: [
                                const Color(0xff000000),
                                const Color(0x00ffffff)
                              ],
                              stops: [0, 1],
                            ).createShader(bounds),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    places[index].image,
                                  ),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(56.0)),
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 100,
                                          width: 0,
                                        ),
                                        Text(
                                          'Hello Aditya,',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                          ),
                                          textAlign: TextAlign.left,
                                        ), //Text hello user
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Wanna plan\nyour next trip?',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 28,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w800,
                                          ),
                                          textAlign: TextAlign.left,
                                        ), //Text Wanna plan ur next trip
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 80.0, top: 80),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                        size: 32,
                                      ),
                                    ), //search icon
                                  ],
                                ),
                                SizedBox(
                                  height: 140,
                                ),
                                Text(
                                  places[index].name,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    height: 1.25,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  places[index].location,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          )),
                        ],
                      );
                    })),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 0;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                _index == 0 ? Color(0xFF2F80EC) : Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.restaurant_menu,
                                color:
                                    _index == 0 ? Colors.white : Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Restaurants',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color:
                                      _index == 0 ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                _index == 1 ? Color(0xFF2F80EC) : Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.home_outlined,
                                color:
                                    _index == 1 ? Colors.white : Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Hotels',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color:
                                      _index == 1 ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 2;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                _index == 2 ? Color(0xFF2F80EC) : Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.flight,
                                color:
                                    _index == 2 ? Colors.white : Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Tickets',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color:
                                      _index == 2 ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 3;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                _index == 3 ? Color(0xFF2F80EC) : Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.home_outlined,
                                color:
                                    _index == 3 ? Colors.white : Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Motels',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color:
                                      _index == 3 ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _index == 0
                ? RestaurantsList()
                : (_index == 1
                    ? HotelsList()
                    : _index == 2
                        ? TravelList()
                        : _index == 3
                            ? TravelList()
                            : TravelList()),
          ],
        ),
      ),
    );
  }
}
