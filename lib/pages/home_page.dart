import 'package:flutter/material.dart';
//import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river/providers/provider.dart';
import 'package:river/providers/state_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Explorer!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProviderPage()));
                },
                child: const Text('Provider')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StateProviderPage()));
                },
                child: const Text('State Provider'))
          ],
        ),
      ),
    );
  }
}
