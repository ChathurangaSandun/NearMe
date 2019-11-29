import 'package:flutter/material.dart';
import 'package:nearme/components/pointlocation_listitem.dart';
import 'package:nearme/models/person.dart';

class PointLocationList extends StatelessWidget {
  List<Person> nearestLocations = List<Person>();
  final Function changeGoogleMapMarkercamera;

  PointLocationList({this.nearestLocations, this.changeGoogleMapMarkercamera});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Positioned(
      bottom: -15,
      child: SizedBox(
        width: screenWidth,
        height: screenHeight * 0.30,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: nearestLocations.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    changeGoogleMapMarkercamera(nearestLocations[index].pointLocation.latitude,
                        nearestLocations[index].pointLocation.longtitude, 15.0);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Container(
                      child: PointLocationListItem(
                          person: nearestLocations[index],
                          changeGoogleMapMarkercamera:
                              changeGoogleMapMarkercamera),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
