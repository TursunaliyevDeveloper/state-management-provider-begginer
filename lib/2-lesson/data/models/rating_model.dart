class RatingModel {
  //       "rating": {
  //           "rate": 3.9,
  //           "count": 120
  //       }
  num rate;
  int count;
  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(rate: json["count"]??0, count: json["count"]??0);
  }
}
