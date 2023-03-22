import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rentalsveiculos/components/section_text.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({
    super.key,
    required this.title,
    required this.widgets,
  });

  final String title;
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionText(title),
        CarouselSlider(
          items: [...widgets],
          options: CarouselOptions(),
        ),
      ],
    );
  }
}
