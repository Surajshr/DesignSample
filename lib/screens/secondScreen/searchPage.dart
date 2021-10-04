import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/searchHotelController.dart';
import 'package:untitled1/screens/firstPage/App_bars.dart';
import 'package:untitled1/screens/firstPage/Search_bar.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  final searchController = Get.put(searchHotelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: app_bar()),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 26.0),
          child: SingleChildScrollView(
            //scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Search For House",
                    style: TextStyle(
                        fontFamily: 'montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15.0),
                serchBar(),
                SizedBox(height: 25.0),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Result For ",
                        style: TextStyle(
                          fontFamily: 'montserrat',
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        "Cox's Bazar",
                        style: TextStyle(
                            fontFamily: 'montserrat',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25.0),
                listOfHotels(),
              ],
            ),
          ),
        ),
      ),
    );
  }





  Widget listOfHotels() {
    return GetX<searchHotelController>(builder: (Controller) {
      return ListView.builder(
          itemCount: Controller.searchHotelList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: Card(
                  elevation: 0.2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: InkWell(
                    child: Container(
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 10.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 90.0,
                                  height: 110.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                      image: AssetImage(
                                        Controller
                                            .searchHotelList[index].imageUrl,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(top: 10.0),
                                      child: Container(
                                          child: Text(
                                        Controller
                                            .searchHotelList[index].hotelName,
                                        style: TextStyle(
                                          fontFamily: 'montserrat',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                        ),
                                        //color: Color(0x746E3CC9),
                                      )),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      Controller
                                          .searchHotelList[index].offPer,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'montserrat',
                                        color: Color(0xff8a8a8a),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.king_bed_outlined,
                                            color: Color(0xff8a8a8a),
                                          ),
                                          SizedBox(
                                            width: 3.0,
                                          ),
                                          Text("4",
                                              style: TextStyle(
                                                  color: Color(0xff8a8a8a))),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Icon(
                                            Icons.pool_outlined,
                                            color: Color(0xff8a8a8a),
                                          ),
                                          SizedBox(
                                            width: 3.0,
                                          ),
                                          Text("1",
                                              style: TextStyle(
                                                  color: Color(0xff8a8a8a))),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Icon(
                                            Icons.bathtub_outlined,
                                            color: Color(0xff8a8a8a),
                                          ),
                                          SizedBox(
                                            width: 3.0,
                                          ),
                                          Text("2",
                                              style: TextStyle(
                                                  color: Color(0xff8a8a8a))),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        Text("from ",
                                            style: TextStyle(
                                                fontFamily: 'montserrat',
                                                fontSize: 12.0,
                                                color: Colors.black)),
                                        Text(
                                            Controller.searchHotelList[index]
                                                .monthPrice,
                                            style: TextStyle(
                                                fontFamily: 'montserrat',
                                                fontSize: 12.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => hotelDetails(movie)));
                    // },
                  )),
            );
          });
    });
  }
}
