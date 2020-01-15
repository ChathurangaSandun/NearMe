import 'package:flutter/material.dart';
import 'package:nearme/components/pointlocation_listitem.dart';
import 'package:nearme/models/person.dart';
import 'package:pk_skeleton/pk_skeleton.dart';

class PointLocationList extends StatelessWidget {
  List<Person> nearestLocations = List<Person>();
  final Function changeGoogleMapMarkercamera;
  bool isLoadingNearestLocations = false;

  PointLocationList({this.nearestLocations, this.changeGoogleMapMarkercamera, this.isLoadingNearestLocations});

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
                    if (isLoadingNearestLocations) {
                      changeGoogleMapMarkercamera(
                          nearestLocations[index].pointLocation.latitude,
                          nearestLocations[index].pointLocation.longtitude,
                          15.0);
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Container(
                      child: !isLoadingNearestLocations
                          ? PKCardSkeleton(
                              isCircularImage: true,
                              isBottomLinesActive: true,
                            )
                          : PointLocationListItem(
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
