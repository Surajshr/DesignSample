class RecommendedModel {
  final String name;
  final String image;
  final String description;
  RecommendedModel({required this.name, required this.image,required this.description});
}

List<RecommendedModel> recommendations = recommendationsData.map((item) =>
    RecommendedModel(name: item['name'], image: item['image'],description:item['description']))
    .toList();

List recommendationsData = [
  {
    "name": "Modern",
    "image":"images/hotel.png",
    "description": "More then 504,326 Houses waiting for your rent or buy",
  },
  {
    "name": "Classic",
    "image":"images/greenHotel.png",
    "description": "More then 504,326 Houses waiting for your rent or buy",
  },
];
