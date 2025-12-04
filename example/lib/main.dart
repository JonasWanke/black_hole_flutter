import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '🛠 black_hole_flutter example',
      home: Scaffold(
        appBar: AppBar(title: const Text('🛠 black_hole_flutter example')),
        body: ListView(
          children: [
            BottomSheetExample(),
            ButtonsExample(),
            FillOrWrapExample(),
          ],
        ),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'FancyBottomSheet',
      children: [
        FancyElevatedButton(
          onPressed: () async => _handlePressed(context),
          child: const Text('Open FancyBottomSheet'),
        ),
      ],
    );
  }

  Future<void> _handlePressed(BuildContext context) async {
    await context.showFancyModalBottomSheet<void>(
      builder: (_) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 128, horizontal: 16),
        child: Text("I'm fancy!"),
      ),
    );
  }
}

class FillOrWrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'FillOrWrap',
      children: [
        const Text('Enough horizontal space → no wrapping'),
        _buildExample(isConstrained: false),
        const SizedBox(height: 16),
        const Text('Constrained horizontal space → wrapping'),
        _buildExample(isConstrained: true),
      ],
    );
  }

  Widget _buildExample({required bool isConstrained}) {
    return Center(
      child: Container(
        constraints: isConstrained ? const BoxConstraints(maxWidth: 200) : null,
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(BorderSide()),
        ),
        child: FillOrWrap(
          spacing: 8,
          wrappedSpacing: 8,
          children: [
            TextButton(onPressed: () {}, child: const Text('Short')),
            TextButton(onPressed: () {}, child: const Text('Loooooooooong')),
            TextButton(onPressed: () {}, child: const Text('Short')),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  const Section({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.textTheme.titleMedium),
          const SizedBox(height: 8),
          ...children,
        ],
      ),
    );
  }
}
