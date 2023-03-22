import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 180,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).colorScheme.primary,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20,
                          fontFamily: 'Body Font',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Ou',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Body Font',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white),
                      ),
                      child: const Text(
                        'Faça Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Body Font',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
