import 'package:flutter/foundation.dart';
import 'package:nearme/models/organization.dart';
import 'package:nearme/models/pointlocation.dart';

// class Person {
//   int id;
//   String name;
//   String address;
//   String mobile;
//   String imageUri;
//   Organization organization;
//   List<PointLocation> pointLocations;

//   Person.empty();

//   Person({
//     this.id,
//     this.name,
//     this.address,
//     this.mobile,
//     this.imageUri,
//     this.organization,
//     this.pointLocations,
//   });

//   factory Person.fromJSON(Map<String, dynamic> parsedJson) {
//     print(parsedJson);
//     return Person(
//         id: int.parse(parsedJson["id"]),
//         name: parsedJson["name"],
//         address: parsedJson["address"],
//         mobile: parsedJson["mobile"],
//         imageUri: parsedJson["imageUri"],
//         pointLocations: parsedJson["pointList"]);
//   }
// }

class Person {
  String id;
  String name;
  String mobile;
  String imageUri;
  List<PointLocation> pointLocations;

  Person({this.id, this.name, this.mobile, this.imageUri, this.pointLocations});

  Person.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    imageUri = json['imageUri'];
    if (json['pointList'] != null) {
      pointLocations = new List<PointLocation>();
      json['pointList'].forEach((v) {
        pointLocations.add(new PointLocation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['imageUri'] = this.imageUri;
    if (this.pointLocations != null) {
      data['pointList'] = this.pointLocations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
