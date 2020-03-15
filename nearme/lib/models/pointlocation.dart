import 'package:flutter/foundation.dart';

class PointLocation {
  int id;
  double latitude;
  double longtitude;
  String type;

  PointLocation({
    @required this.id,
    @required this.latitude,
    @required this.longtitude,
    @required this.type,
  });

  factory PointLocation.fromJson(Map<String, dynamic> parsedJson) {
    return PointLocation(
      id: int.parse(parsedJson['id']),
      latitude: parsedJson['latitude'],
      longtitude: parsedJson['longtitude'],
      type: parsedJson['type'],
    );
  }
}
