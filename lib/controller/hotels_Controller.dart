
import 'package:untitled1/model/hotel_type.dart';
import 'package:get/get.dart';

class hotelController extends GetxController{
  var hotelList = <Hotels>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchHotels();
  }

    fetchHotels()async{
      await  Future.delayed(Duration(seconds: 2));

      var hotelData =[
        Hotels(
          hotelImg: "images/hotel1.png",
          hotelName: "Luxurium Hotels Pvt. ltd.",
          discountRate: "65% off",
        ),
        Hotels(
          hotelImg: "images/hotel2.png",
          hotelName: "Luxurium Hotels Pvt. ltd.",
          discountRate: "65% off",
        ),
        Hotels(
          hotelImg: "images/hotel3.png",
          hotelName: "Luxurium Hotels Pvt. ltd.",
          discountRate: "65% off",
        ),

      ];

      hotelList.value = hotelData;
    }
  }
