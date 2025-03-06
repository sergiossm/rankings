import 'package:flutter/material.dart';
import 'package:rankings/l10n/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.appBarTitle)),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
