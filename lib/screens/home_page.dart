import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/hotels_Controller.dart';
import 'package:untitled1/model/recommend.dart';

import 'firstPage/App_bars.dart';
import 'firstPage/Search_bar.dart';
import 'firstPage/hotels_list.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final _paeController = PageController(viewportFraction: 0.877);
  final HotelController = Get.put(hotelController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: app_bar(),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 24.0, top: 24.0, right: 22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                serchBar(),
                SizedBox(height: 17.0),
                banner(),
                SizedBox(height: 23.2),
                Row(
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                          //color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          fontFamily: 'montserrat'),
                    ),
                    SizedBox(
                      width: 200.0,
                    ),
                    Container(
                        width: 30.0,
                        height: 6.0,
                        child: Image.asset("images/Dots.png"))
                  ],
                ),
                SliderHotel(paeController: _paeController),
                Container(
                  height: 30,
                  margin: EdgeInsets.only(left: 14.4, right: 0.8),
                  child: DefaultTabController(
                    length: 5,
                    child: TabBar(
                      labelPadding: EdgeInsets.only(left: 20.4, right: 35.0),
                      indicatorPadding: EdgeInsets.only(left:10.4, right: 30.4),
                      indicatorColor: Color(0x746E3CC9),
                      isScrollable: true,
                      labelColor: Color(0xFF181818),
                      unselectedLabelColor: Color(0xFF8a8a8a),
                      tabs: [
                        Tab(
                          child: Container(
                              child: Text(
                                '5 Star ',
                                style: TextStyle(
                                  //color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  fontFamily: 'montserrat'
                                ),
                              )),
                        ),
                        Tab(
                          child: GestureDetector(
                            child: Container(child: Text('4 Star ',style: TextStyle(
                              //color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                fontFamily: 'montserrat'
                            ),)),
                          onTap: (){

                          },
                          ),

                        ),
                        Tab(
                          child: Container(child: Text('3 Star ',style: TextStyle(
                            //color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              fontFamily: 'montserrat'
                          ),)),
                        ),
                        Tab(
                          child: Container(child: Text('2 Star ',style: TextStyle(
                            //color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              fontFamily: 'montserrat'
                          ),)),
                        ),
                        Tab(
                          child: Container(child: Text('1 Star ',style: TextStyle(
                            //color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              fontFamily: 'montserrat'
                          ),)),
                        )
                      ],
                    ),
                  ),
                ),
               // SizedBox(height: 19.6),
                hotel_list()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class SliderHotel extends StatelessWidget {
  const SliderHotel({
    Key? key,
    required PageController paeController,
  }) : _paeController = paeController, super(key: key);

  final PageController _paeController;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 330,
       margin: EdgeInsets.only(top: 24.7),
        child: PageView(
          physics: BouncingScrollPhysics(),
          controller: _paeController,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            recommendations.length,
            (int index) => Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xfffffefe),
                    boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.05),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(4, 3), // changes position of shadow

                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left:16.0,top:16.0,right: 16.0),
                        width: 222.00,
                        height: 127.00,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                //'images/hotel.png'
                                recommendations[index].image),
                          ),

                        ),

                      ),
                    ),
                    SizedBox(
                      height: 24.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.5),
                      child: Text(
                        recommendations[index].name,
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left:16.0,right: 23.0, top: 7.4),
                      child: Text(
                        recommendations[index].description,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            color: Color(0xff8a8a8a)),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left:16.0,bottom:16.0,right: 17.0, top: 16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff011213),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10.0)),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'from ',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    Text(
                                      "\$30/month",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                              //color: Colors.grey,
                              decoration: BoxDecoration(
                                color: Color(0xEAE8E8E8),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.arrow_forward_sharp,
                                  color: Color(0x746E3CC9),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class banner extends StatelessWidget {
  const banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image(
                image: AssetImage('images/Gradient.png'), fit: BoxFit.fill),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.2, left: 17.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy your weekends",
                  style: TextStyle(
                    color: Colors.white,
                    // fontWeight:FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "with family | Special Offer !",
                  style: TextStyle(
                    color: Colors.white,
                    // fontWeight:FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "50% off",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


