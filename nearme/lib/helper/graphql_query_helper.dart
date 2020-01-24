class GraphQlQueryHelper {
  // get nearest persons
  String getNearestPersons(
      double latitude, double longtitude, int organizationId)  {
    String qry = """{
    nearestLocations(latitude: $latitude, longtitude: $longtitude, organizationId: $organizationId){
      id
      name
      address
      mobile
      imageUri
      pointLocation{
        id
        latitude
        longtitude
      }
    }
    }""";

    return qry;
  }
}
