import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentalsveiculos/global/routes.dart';
import 'package:rentalsveiculos/screens/home/home_page.dart';

void main(List<String> args) {
  runApp(const RentalVeiculosApp());
}

class RentalVeiculosApp extends StatelessWidget {
  const RentalVeiculosApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.light();
    const dark = Color.fromRGBO(46, 56, 64, 1);
    const normal = Color.fromRGBO(78, 110, 129, 1);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: normal,
        ),
        textTheme: theme.textTheme.copyWith(
          titleLarge: theme.textTheme.titleLarge?.copyWith(
            fontFamily: 'Title Font',
            fontSize: 25,
          ),
          bodyMedium: theme.textTheme.bodyMedium?.copyWith(
            fontFamily: 'Body Font',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        appBarTheme: theme.appBarTheme.copyWith(
          elevation: 0,
        ),
      ),
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.HOME: (context) => const HomePage(),
      },
    );
  }
}
