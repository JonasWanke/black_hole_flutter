import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ButtonsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Buttons',
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            // We don't want to crop shadows.
            padding: const EdgeInsets.only(right: 12, bottom: 12),
            child: Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                _buildRow('Widget', [
                  const Text('default'),
                  const Text('onPressed: null'),
                  const Text('isEnabled: false'),
                  const Text('isLoading: true,\nloadingChild: null'),
                  const Text('isLoading: true'),
                ]),
                _buildSpacerRow(),
                _buildFancyTextButtonRow(),
                _buildSpacerRow(),
                _buildFancyTextButtonIconRow(),
                _buildSpacerRow(),
                _buildFancyOutlinedButtonRow(),
                _buildSpacerRow(),
                _buildFancyOutlineButtonIconRow(),
                _buildSpacerRow(),
                _buildFancyElevatedButtonRow(),
                _buildSpacerRow(),
                _buildFancyElevatedButtonIconRow(),
                _buildSpacerRow(),
                _buildFancyFilledButtonRow(),
                _buildSpacerRow(),
                _buildFancyFilledButtonIconRow(),
                _buildSpacerRow(),
                _buildFancyFilledButtonTonalRow(),
                _buildSpacerRow(),
                _buildFancyFilledButtonTonalIconRow(),
                _buildSpacerRow(),
                _buildFancyIconButtonRow(),
                _buildSpacerRow(),
                _buildFancyIconButtonFilledRow(),
                _buildSpacerRow(),
                _buildFancyIconButtonFilledTonalRow(),
                _buildSpacerRow(),
                _buildFancyIconButtonOutlinedRow(),
                _buildSpacerRow(),
                _buildFancyFabRow(),
                _buildSpacerRow(),
                _buildFancyFabSmallRow(),
                _buildSpacerRow(),
                _buildFancyFabLargeRow(),
                _buildSpacerRow(),
                _buildExtendedFancyFabRow(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TableRow _buildFancyTextButtonRow() {
    return _buildRow('FancyTextButton', [
      FancyTextButton(onPressed: () {}, child: const Text('child')),
      const FancyTextButton(onPressed: null, child: Text('child')),
      FancyTextButton(
        isEnabled: false,
        onPressed: () {},
        child: const Text('child'),
      ),
      FancyTextButton(
        onPressed: () {},
        isLoading: true,
        child: const Text('child'),
      ),
      FancyTextButton(
        onPressed: () {},
        isLoading: true,
        loadingChild: const Text('loadingChild'),
        child: const Text('child'),
      ),
    ]);
  }

  TableRow _buildFancyTextButtonIconRow() {
    return _buildRow('FancyTextButton.icon', [
      FancyTextButton.icon(
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      const FancyTextButton.icon(
        onPressed: null,
        label: Text('label'),
        icon: Icon(Icons.favorite),
      ),
      FancyTextButton.icon(
        isEnabled: false,
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyTextButton.icon(
        onPressed: () {},
        isLoading: true,
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyTextButton.icon(
        onPressed: () {},
        isLoading: true,
        loadingLabel: const Text('loadingLabel'),
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyOutlinedButtonRow() {
    return _buildRow('FancyOutlinedButton', [
      FancyOutlinedButton(onPressed: () {}, child: const Text('child')),
      const FancyOutlinedButton(onPressed: null, child: Text('child')),
      FancyOutlinedButton(
        isEnabled: false,
        onPressed: () {},
        child: const Text('child'),
      ),
      FancyOutlinedButton(
        onPressed: () {},
        isLoading: true,
        child: const Text('child'),
      ),
      FancyOutlinedButton(
        onPressed: () {},
        isLoading: true,
        loadingChild: const Text('loadingChild'),
        child: const Text('child'),
      ),
    ]);
  }

  TableRow _buildFancyOutlineButtonIconRow() {
    return _buildRow('FancyOutlinedButton.icon', [
      FancyOutlinedButton.icon(
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      const FancyOutlinedButton.icon(
        onPressed: null,
        label: Text('label'),
        icon: Icon(Icons.favorite),
      ),
      FancyOutlinedButton.icon(
        isEnabled: false,
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyOutlinedButton.icon(
        onPressed: () {},
        isLoading: true,
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyOutlinedButton.icon(
        onPressed: () {},
        isLoading: true,
        loadingLabel: const Text('loadingLabel'),
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyElevatedButtonRow() {
    return _buildRow('FancyElevatedButton', [
      FancyElevatedButton(onPressed: () {}, child: const Text('child')),
      const FancyElevatedButton(onPressed: null, child: Text('child')),
      FancyElevatedButton(
        isEnabled: false,
        onPressed: () {},
        child: const Text('child'),
      ),
      FancyElevatedButton(
        onPressed: () {},
        isLoading: true,
        child: const Text('child'),
      ),
      FancyElevatedButton(
        onPressed: () {},
        isLoading: true,
        loadingChild: const Text('loadingChild'),
        child: const Text('child'),
      ),
    ]);
  }

  TableRow _buildFancyElevatedButtonIconRow() {
    return _buildRow('FancyElevatedButton.icon', [
      FancyElevatedButton.icon(
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      const FancyElevatedButton.icon(
        onPressed: null,
        label: Text('label'),
        icon: Icon(Icons.favorite),
      ),
      FancyElevatedButton.icon(
        isEnabled: false,
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyElevatedButton.icon(
        onPressed: () {},
        isLoading: true,
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyElevatedButton.icon(
        onPressed: () {},
        isLoading: true,
        loadingLabel: const Text('loadingLabel'),
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyFilledButtonRow() {
    return _buildRow('FancyFilledButton', [
      FancyFilledButton(onPressed: () {}, child: const Text('child')),
      const FancyFilledButton(onPressed: null, child: Text('child')),
      FancyFilledButton(
        isEnabled: false,
        onPressed: () {},
        child: const Text('child'),
      ),
      FancyFilledButton(
        onPressed: () {},
        isLoading: true,
        child: const Text('child'),
      ),
      FancyFilledButton(
        onPressed: () {},
        isLoading: true,
        loadingChild: const Text('loadingChild'),
        child: const Text('child'),
      ),
    ]);
  }

  TableRow _buildFancyFilledButtonIconRow() {
    return _buildRow('FancyFilledButton.icon', [
      FancyFilledButton.icon(
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      const FancyFilledButton.icon(
        onPressed: null,
        label: Text('label'),
        icon: Icon(Icons.favorite),
      ),
      FancyFilledButton.icon(
        isEnabled: false,
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyFilledButton.icon(
        onPressed: () {},
        isLoading: true,
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyFilledButton.icon(
        onPressed: () {},
        isLoading: true,
        loadingLabel: const Text('loadingLabel'),
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyFilledButtonTonalRow() {
    return _buildRow('FancyFilledButton.tonal', [
      FancyFilledButton.tonal(onPressed: () {}, child: const Text('child')),
      const FancyFilledButton.tonal(onPressed: null, child: Text('child')),
      FancyFilledButton.tonal(
        isEnabled: false,
        onPressed: () {},
        child: const Text('child'),
      ),
      FancyFilledButton.tonal(
        onPressed: () {},
        isLoading: true,
        child: const Text('child'),
      ),
      FancyFilledButton.tonal(
        onPressed: () {},
        isLoading: true,
        loadingChild: const Text('loadingChild'),
        child: const Text('child'),
      ),
    ]);
  }

  TableRow _buildFancyFilledButtonTonalIconRow() {
    return _buildRow('FancyFilledButton.tonalIcon', [
      FancyFilledButton.tonalIcon(
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      const FancyFilledButton.tonalIcon(
        onPressed: null,
        label: Text('label'),
        icon: Icon(Icons.favorite),
      ),
      FancyFilledButton.tonalIcon(
        isEnabled: false,
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyFilledButton.tonalIcon(
        onPressed: () {},
        isLoading: true,
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyFilledButton.tonalIcon(
        onPressed: () {},
        isLoading: true,
        loadingLabel: const Text('loadingLabel'),
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyFabRow() {
    return _buildRow('FancyFab', [
      FancyFab(onPressed: () {}, child: const Icon(Icons.favorite)),
      const FancyFab(onPressed: null, child: Icon(Icons.favorite)),
      FancyFab(
        isEnabled: false,
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
      FancyFab(
        onPressed: () {},
        isLoading: true,
        child: const Icon(Icons.favorite),
      ),
      FancyFab(
        onPressed: () {},
        isLoading: true,
        loadingLabel: const Text('loadingLabel'),
        child: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyFabSmallRow() {
    return _buildRow('FancyFab.small', [
      FancyFab.small(onPressed: () {}, child: const Icon(Icons.favorite)),
      const FancyFab.small(onPressed: null, child: Icon(Icons.favorite)),
      FancyFab.small(
        isEnabled: false,
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
      FancyFab.small(
        onPressed: () {},
        isLoading: true,
        child: const Icon(Icons.favorite),
      ),
      FancyFab.small(
        onPressed: () {},
        isLoading: true,
        loadingLabel: const Text('loadingLabel'),
        child: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyFabLargeRow() {
    return _buildRow('FancyFab.large', [
      FancyFab.large(onPressed: () {}, child: const Icon(Icons.favorite)),
      const FancyFab.large(onPressed: null, child: Icon(Icons.favorite)),
      FancyFab.large(
        isEnabled: false,
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
      FancyFab.large(
        onPressed: () {},
        isLoading: true,
        child: const Icon(Icons.favorite),
      ),
      FancyFab.large(
        onPressed: () {},
        isLoading: true,
        loadingLabel: const Text('loadingLabel'),
        child: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildExtendedFancyFabRow() {
    return _buildRow('FancyFab.extended', [
      FancyFab.extended(
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      const FancyFab.extended(
        onPressed: null,
        label: Text('label'),
        icon: Icon(Icons.favorite),
      ),
      FancyFab.extended(
        isEnabled: false,
        onPressed: () {},
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyFab.extended(
        onPressed: () {},
        isLoading: true,
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
      FancyFab.extended(
        onPressed: () {},
        isLoading: true,
        loadingLabel: const Text('loadingLabel'),
        label: const Text('label'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyIconButtonRow() {
    return _buildRow('FancyIconButton', [
      FancyIconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
      const FancyIconButton(onPressed: null, icon: Icon(Icons.favorite)),
      FancyIconButton(
        isEnabled: false,
        onPressed: () {},
        icon: const Icon(Icons.favorite),
      ),
      FancyIconButton(
        onPressed: () {},
        isLoading: true,
        icon: const Icon(Icons.favorite),
      ),
      FancyIconButton(
        onPressed: () {},
        isLoading: true,
        loadingChild: const Text('loadingLabel'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyIconButtonFilledRow() {
    return _buildRow('FancyIconButton.filled', [
      FancyIconButton.filled(
        onPressed: () {},
        icon: const Icon(Icons.favorite),
      ),
      const FancyIconButton.filled(onPressed: null, icon: Icon(Icons.favorite)),
      FancyIconButton.filled(
        isEnabled: false,
        onPressed: () {},
        icon: const Icon(Icons.favorite),
      ),
      FancyIconButton.filled(
        onPressed: () {},
        isLoading: true,
        icon: const Icon(Icons.favorite),
      ),
      FancyIconButton.filled(
        onPressed: () {},
        isLoading: true,
        loadingChild: const Text('loadingLabel'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyIconButtonFilledTonalRow() {
    return _buildRow('FancyIconButton.filledTonal', [
      FancyIconButton.filledTonal(
        onPressed: () {},
        icon: const Icon(Icons.favorite),
      ),
      const FancyIconButton.filledTonal(
        onPressed: null,
        icon: Icon(Icons.favorite),
      ),
      FancyIconButton.filledTonal(
        isEnabled: false,
        onPressed: () {},
        icon: const Icon(Icons.favorite),
      ),
      FancyIconButton.filledTonal(
        onPressed: () {},
        isLoading: true,
        icon: const Icon(Icons.favorite),
      ),
      FancyIconButton.filledTonal(
        onPressed: () {},
        isLoading: true,
        loadingChild: const Text('loadingLabel'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildFancyIconButtonOutlinedRow() {
    return _buildRow('FancyIconButton.outlined', [
      FancyIconButton.outlined(
        onPressed: () {},
        icon: const Icon(Icons.favorite),
      ),
      const FancyIconButton.outlined(
        onPressed: null,
        icon: Icon(Icons.favorite),
      ),
      FancyIconButton.outlined(
        isEnabled: false,
        onPressed: () {},
        icon: const Icon(Icons.favorite),
      ),
      FancyIconButton.outlined(
        onPressed: () {},
        isLoading: true,
        icon: const Icon(Icons.favorite),
      ),
      FancyIconButton.outlined(
        onPressed: () {},
        isLoading: true,
        loadingChild: const Text('loadingLabel'),
        icon: const Icon(Icons.favorite),
      ),
    ]);
  }

  TableRow _buildRow(String title, List<Widget> children) {
    return TableRow(
      children: [
        Text(title),
        for (final child in children) ...[
          const SizedBox(width: 8),
          Center(child: child),
        ],
      ],
    );
  }

  TableRow _buildSpacerRow() =>
      TableRow(children: List.filled(11, const SizedBox(height: 8)));
}
