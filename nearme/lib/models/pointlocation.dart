import 'package:flutter/foundation.dart';

class PointLocation {
  int id;
  double latitude;
  double longtitude;

  PointLocation({
    @required this.id,
    @required this.latitude,
    @required this.longtitude,
  });

  factory PointLocation.fromJson(dynamic json) {
    return PointLocation(
      id: int.parse(json['id']),
      latitude: json['latitude'],
      longtitude: json['longtitude'],
    );
  }
}
