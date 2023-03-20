import 'package:rentalsveiculos/model/branch.dart';

class Transmission {
  static const MANUAL = 'Manual';
  static const AUTOMATIC = 'Automático';
}

class Fuel {
  static const GASOLINE = 'Gasolina';
  static const ALCOHOL = 'Álcool';
  static const DIESEL = 'Diesel';
  static const FLEX = 'Flex';
}

class Car {
  final String name;
  final String manufacturer;
  final int year;
  final int rate;
  final Branch location;
  final int distanceTravelled;
  final String fuelType;
  final String transmissionType;
  final String imagePath;
  final double dayPrice;

  const Car({
    required this.name,
    required this.manufacturer,
    required this.year,
    required this.location,
    required this.distanceTravelled,
    required this.rate,
    required this.fuelType,
    required this.transmissionType,
    required this.dayPrice,
    required this.imagePath,
  });
}
