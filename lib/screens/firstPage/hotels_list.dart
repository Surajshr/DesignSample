import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/hotels_Controller.dart';

class hotel_list extends StatelessWidget {
  const hotel_list({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<hotelController>(
        builder: (controller) {
          return ListView.builder(
              itemCount: controller.hotelList.length,
              shrinkWrap: true,
              itemBuilder: (context, index){

                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Card(
                      elevation: 0.2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: InkWell(
                        child: Container(
                          //padding:
                          // EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 80.0,
                                    height: 90.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        image: AssetImage(
                                          controller.hotelList[index].hotelImg,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(13,13.4,0,0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x746233D5),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 22.3,
                                                  left: 20.7,
                                                  top: 5.0,
                                                  bottom: 5.0),
                                              child: Text(
                                                controller.hotelList[index].discountRate,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    //fontWeight: FontWeight.bold,
                                                    fontSize: 12.0,
                                                    fontFamily: 'montserrat'
                                                ),

                                                //style: TextStyle(color: Colors.white),
                                                //color: Color(0x746E3CC9),
                                              ),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(15.3,0,0.2,0),
                                        child: Text(
                                          controller.hotelList[index].hotelName,
                                          style: TextStyle(
                                            //color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0,
                                              fontFamily: 'montserrat'
                                          ),
                                          // style: TextStyle(
                                          //     fontSize: 15.0,
                                          //     fontFamily: 'montserrat',
                                          //     fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),


                      )
                  ),
                );
                // return Card(
                //   child: Padding(
                //       padding:const EdgeInsets.all(10.0),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.end,
                //         children: [
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text(
                //                     '${controller.hotelList[index].hotelImg}',
                //                     style: TextStyle(fontSize: 24),
                //                   ),
                //                   Text(
                //                       '${controller.hotelList[index].hotelName}'
                //                   )
                //                 ],
                //               ),
                //               Text('${controller.hotelList[index].discountRate}',
                //                 style: TextStyle(
                //                     fontSize: 24
                //                 ),)
                //             ],
                //           ),
                //           // ElevatedButton(
                //           //     onPressed: (){
                //           //       cartController.addToCart(controller.productList[index]);
                //           //     },
                //           //
                //           //     child: Text('Add to Card'))
                //         ],
                //       )
                //   ),
                // );
              });
        }
    );
  }
}