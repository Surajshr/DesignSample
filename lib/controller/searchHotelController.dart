import 'package:get/get.dart';
import 'package:untitled1/model/searchHotelModel.dart';

class searchHotelController extends GetxController{
  var searchHotelList = <searchHotel>[].obs;

  @override
  void onInit(){
  super.onInit();
  fetchSearchData();
  }

  void fetchSearchData() async{
    var searchResult =[
      searchHotel(
          offPer: '18 % less than usual',
          hotelName: 'Muscat Hllday Resort',
          imageUrl: 'images/muscat.png',
          monthPrice:'\$32/month'
      ),
      searchHotel(
          offPer: '8% less than usual',
          hotelName: 'Ocean Paradise',
          imageUrl: 'images/ocean.png',
          monthPrice:'\$21/month'
      ),
      searchHotel(
          offPer: '8% less than usual',
          hotelName: 'Hotel Diamond Palace',
          imageUrl: 'images/hotel.png',
          monthPrice:'\$65/month'
      ),
      searchHotel(
          offPer: '28% less than usual',
          hotelName: "Long Beach Hotel Cox's",
          imageUrl: 'images/long.png',
          monthPrice:'\23/month'
      ),
      searchHotel(
          offPer: '28% less than usual',
          hotelName: "Long Beach Hotel Cox's",
          imageUrl: 'images/long.png',
          monthPrice:'\$32/month'
      ),
    ];
    searchHotelList.value =searchResult;
  }

}