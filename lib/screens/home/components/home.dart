import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rentalsveiculos/components/car_slider_item.dart';
import 'package:rentalsveiculos/components/section.dart';
import 'package:rentalsveiculos/data/cars_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            _imageSlider(),
            SliderSection(
              title: 'Os Mais Populares',
              widgets: CARS_DATA.map((car) => CarCardItem(car)).toList(),
            ),
            const SizedBox(height: 20),
            SliderSection(
              title: 'Melhor Custo Benefício',
              widgets: CARS_DATA.map((car) => CarCardItem(car)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageSlider() {
    return CarouselSlider(
      items: [
        Image.asset('assets/images/add_banner_2.png'),
        Image.asset('assets/images/add_banner.png'),
      ],
      options: CarouselOptions(
        height: 100,
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: const Duration(seconds: 5),
      ),
    );
  }
}
