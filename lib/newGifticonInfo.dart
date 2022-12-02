import 'dart:convert';

import 'package:http/http.dart' as http;

class GifticonAPI{
  getData(String url) async{
    http.Response response=await http.get(
        Uri.parse(url)
    );
    try{
      if (response.statusCode==200){
        return response;
      }else{
        return 'failed';
      }
    }catch(e){
      print(e);
      return 'failed';
    }
  }
}

class GifticonInfo{
  String brand;
  String couponName;
  String date;
  int id;
  String imageUrl;
  String isUsed;
  int timer;
  String user;

  GifticonInfo(
      this.id,
      this.user,
      this.brand,
      this.couponName,
      this.imageUrl,
      this.date,
      this.timer,
      this.isUsed,
      );
  factory GifticonInfo.fromJson(Map<String, dynamic> json){
    return GifticonInfo(
      json["id"],
      json["user"],
      json["brand"],
      json["couponName"],
      json["imageUrl"],
      json["date"],
      json["timer"],
      json["isUsed"],
    );
  }
}



// class GifticonInfo{
//   // ID, 이름, 유효기간, 알림일
//   String id;
//   String name;
//   String img;
//   DateTime deadline;
//   int alarm;
//
//   GifticonInfo(
//       this.id,
//       this.name,
//       this.img,
//       this.deadline,
//       this.alarm,
//       );
// }