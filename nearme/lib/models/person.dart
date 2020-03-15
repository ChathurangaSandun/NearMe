import 'package:flutter/foundation.dart';
import 'package:nearme/models/organization.dart';
import 'package:nearme/models/pointlocation.dart';

class Person {
  int id;
  String name;
  String address;
  String mobile;
  String imageUri;
  Organization organization;
  List<PointLocation> pointLocations;

  Person.empty();

  Person({
    this.id,
    this.name,
    this.address,
    this.mobile,
    this.imageUri,
    this.organization,
    this.pointLocations,
  });

  factory Person.fromJSON(Map<String, dynamic> parsedJson) {
    return Person(
        id: int.parse(parsedJson["id"]),
        name: parsedJson["name"],
        address: parsedJson["address"],
        mobile: parsedJson["mobile"],
        imageUri: parsedJson["imageUri"],
        pointLocations: parsedJson["pointList"]);
  }
}
