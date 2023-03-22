import 'package:flutter/material.dart';
import 'package:rentalsveiculos/components/app_drawer.dart';
import 'package:rentalsveiculos/screens/home/components/car_catalog.dart';
import 'package:rentalsveiculos/screens/home/components/car_insurances.dart';
import 'package:rentalsveiculos/screens/home/components/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(
          title: const Text('Rentals Veículos'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 2.5,
            tabs: [
              Tab(
                text: 'Catálogo',
                icon: Icon(
                  Icons.grid_view_rounded,
                  size: 20,
                ),
              ),
              Tab(
                text: 'Home',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Planos',
                icon: Icon(Icons.car_rental),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          CarCatalog(),
          Home(),
          CarInsurances(),
        ]),
      ),
    );
  }
}
