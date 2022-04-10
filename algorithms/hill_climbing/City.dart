import 'dart:math';
import 'package:haversine_distance/haversine_distance.dart';

class City {
  static const double EARTH_RADIUS = 6378.13780;

  static const double CONVERT_DEGREE_TO_RADIANS = pi / 1800;

  double longitude;
  double latitude;
  String name;

  City(this.longitude, this.latitude, this.name);

  String getName() {
    return name;
  }

  double getLongitude() {
    return longitude;
  }

  double getLatitude() {
    return latitude;
  }

  double degreeToRadian(double degree) {
    return degree * CONVERT_DEGREE_TO_RADIANS;
  }

  double measureDistance(City city1, City city2) {
    double deltaLongitude = degreeToRadian(city1.longitude - city2.longitude);
    double deltaLatitude = degreeToRadian(city1.latitude - city2.latitude);
    double a = sin(deltaLatitude /2) * sin(deltaLatitude /2)
        + cos(degreeToRadian(city1.latitude)) * cos(degreeToRadian(city2.latitude))
    * sin(deltaLongitude /2) * sin(deltaLongitude /2);
    double c = 2 * atan2(sqrt(a), sqrt(1-a));
    //double distance = EARTH_RADIUS * c *1000;
    double height =

  }
}
