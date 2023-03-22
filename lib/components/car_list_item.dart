import 'package:flutter/material.dart';
import 'package:rentalsveiculos/components/buttons_row.dart';
import 'package:rentalsveiculos/model/car.dart';

class CarListItem extends StatelessWidget {
  const CarListItem(this.car, {super.key});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          //Image
          Stack(children: [
            Image.network(car.imagePath),
            const Positioned(
                top: 10,
                right: 8,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.amber,
                  size: 30,
                )),
          ]),
          //Details
          ListTile(
            title: Text(
              car.fullName,
              style: const TextStyle(
                fontSize: 22,
                fontFamily: 'Body Font',
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Row(
              children: [...car.generateStars()],
            ),
            trailing: Text(
              'R\$ ${car.dayPrice}',
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: _iconTile(Icons.work_outline, car.type)),
                    Expanded(
                      child: _iconTile(
                        Icons.local_gas_station_outlined,
                        car.fuelType,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: _iconTile(
                          Icons.settings_outlined, car.transmissionType),
                    ),
                    Expanded(
                      child: _iconTile(Icons.home_outlined,
                          '${car.location.city} - ${car.location.state}'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ButtonsRow(
            leftButtonText: 'Realizar Simulação',
            onPressedLeftButton: () {},
            rightButtonText: 'Alugar',
            onPressedRightButton: () {},
          )
        ],
      ),
    );
  }

  Widget _iconTile(iconData, text) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(iconData),
        const SizedBox(width: 10),
        Text(
          text.toString(),
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
