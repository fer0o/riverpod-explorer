import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';

final valueProvider = Provider(
  (ref) => 'Hello world!',
);
final valueIntProvider = Provider((ref) => 42);

class ProviderPage extends HookConsumerWidget {
  const ProviderPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(valueProvider);
    final intvalue = ref.watch(valueIntProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(value), Text((intvalue.toString()))],
        ),
      ),
    );
  }
}
