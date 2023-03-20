import 'package:rentalsveiculos/model/branch.dart';
import 'package:rentalsveiculos/model/car.dart';
import 'package:rentalsveiculos/model/user.dart';

class Rent {
  final int id;
  final User driver;
  final User client;
  final Car car;
  final DateTime starting;
  final DateTime dueDate;
  final Branch origin;
  final Branch destiny;

  const Rent({
    required this.id,
    required this.driver,
    required this.client,
    required this.car,
    required this.starting,
    required this.dueDate,
    required this.origin,
    required this.destiny,
  });
}
