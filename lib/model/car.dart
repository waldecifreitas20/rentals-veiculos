import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  static const ELETRIC = 'Elétrico';
  static const HIBRID = 'Híbrido';
}

class CarType {
  static const SUV = 'SUV';
  static const Hatch = 'Hatch';
  static const Sedan = 'Sedan';
  static const Crossover = 'Crossover';
  static const Minivan = 'Minivan';
  static const Pickup = 'Picape';
  static const Coupe = 'Coupe';
  static const Luxe = 'Luxo';
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
  final String type;

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
    required this.type,
  });

  String get fullName => '$manufacturer $name $year';

  List<Widget> generateStars() {
    List<Widget> stars = [];

    for (var i = 0; i < 5; i++) {
      if (i < rate) {
        stars.add(const Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ));
      } else {
        stars.add(const Icon(
          Icons.star_border_outlined,
          color: Colors.amber,
          size: 18,
        ));
      }
    }
    return stars;
  }
}
