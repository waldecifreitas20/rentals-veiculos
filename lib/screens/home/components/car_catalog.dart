import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rentalsveiculos/components/car_list_item.dart';
import 'package:rentalsveiculos/data/cars_data.dart';

class CarCatalog extends StatelessWidget {
  const CarCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...CARS_DATA.map((car) => CarListItem(car))
      ],
    );
  }
}