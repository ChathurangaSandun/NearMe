import 'package:nearme/models/pointLocationTypeEnum.dart';
import 'package:nearme/models/pointlocation.dart';
import 'package:nearme/screens/onboarding_screen.dart';

class ApplicationHelper {
  static String getHomeAddressFromPointList(
      List<PointLocation> pointLocations, PointTypes pointTypes) {
    String address = '';
    pointLocations.forEach((PointLocation point) {
      if (point.type == 'HOME') {
        address = point.address;
      }
    });
    return address;
  }

  static String getCompanyAddressFromPointList(
      List<PointLocation> pointLocations, PointTypes pointTypes) {
    String address = '';
    pointLocations.forEach((PointLocation point) {
      if (point.type == 'COMPANY') {
        address = point.address;
      }
    });
    return address;
  }
}
