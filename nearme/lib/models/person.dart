import 'package:flutter/foundation.dart';
import 'package:nearme/models/organization.dart';
import 'package:nearme/models/pointlocation.dart';

class Person {
  int id;
  String name;
  String address;
  String mobile;
  Organization organization;
  PointLocation pointLocation;

  Person({
    @required this.id,
    @required this.name,
    @required this.address,
    this.mobile,
    this.organization,
    this.pointLocation,
  });

  factory Person.fromJSON(dynamic data) {
    return Person(
      id: int.parse(data["id"]),
      name: data["name"],
      address: data["address"],
      mobile:  data["mobile"],
      pointLocation: PointLocation.fromJson(data["pointLocation"])


    );
  }
}
