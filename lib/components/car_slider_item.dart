import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rentalsveiculos/model/car.dart';

class CarCardItem extends StatelessWidget {
  const CarCardItem(this.car, {super.key});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Image.network(
            car.imagePath,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 300,
              color: Colors.black54,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    car.fullName,
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ...car.generateStars(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _generateStars() {
    List<Widget> stars = [];

    for (var i = 0; i < 5; i++) {
      if (i < car.rate) {
        stars.add(Icon(
          Icons.star,
          color: Colors.amber,
        ));
      } else {
        stars.add(Icon(
          Icons.star_border_outlined,
          color: Colors.amber,
        ));
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [...stars],
    );
  }
}
