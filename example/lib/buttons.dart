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
                _buildFancyIconFlatButtonRow(),
                _buildSpacerRow(),
                _buildFancyOutlinedButtonRow(),
                _buildSpacerRow(),
                _buildFancyIconOutlineButtonRow(),
                _buildSpacerRow(),
                _buildFancyElevatedButtonRow(),
                _buildSpacerRow(),
                _buildFancyIconRaisedButtonRow(),
                _buildSpacerRow(),
                _buildFancyFabRow(),
                _buildSpacerRow(),
                _buildExtendedFancyFabRow(),
              ],
            ),
          ),
        )
      ],
    );
  }

  TableRow _buildFancyTextButtonRow() => _buildRow('FancyTextButton', [
        FancyTextButton(
          onPressed: () {},
          child: const Text('child'),
        ),
        const FancyTextButton(
          onPressed: null,
          child: Text('child'),
        ),
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
  TableRow _buildFancyIconFlatButtonRow() => _buildRow('FancyTextButton.icon', [
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

  TableRow _buildFancyOutlinedButtonRow() => _buildRow('FancyOutlinedButton', [
        FancyOutlinedButton(
          onPressed: () {},
          child: const Text('child'),
        ),
        const FancyOutlinedButton(
          onPressed: null,
          child: Text('child'),
        ),
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
  TableRow _buildFancyIconOutlineButtonRow() =>
      _buildRow('FancyOutlinedButton.icon', [
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

  TableRow _buildFancyElevatedButtonRow() => _buildRow('FancyElevatedButton', [
        FancyElevatedButton(
          onPressed: () {},
          child: const Text('child'),
        ),
        const FancyElevatedButton(
          onPressed: null,
          child: Text('child'),
        ),
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
  TableRow _buildFancyIconRaisedButtonRow() =>
      _buildRow('FancyElevatedButton.icon', [
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

  TableRow _buildFancyFabRow() => _buildRow('FancyFab', [
        FancyFab(
          onPressed: () {},
          child: const Icon(Icons.favorite),
        ),
        const FancyFab(
          onPressed: null,
          child: Icon(Icons.favorite),
        ),
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
  TableRow _buildExtendedFancyFabRow() => _buildRow('FancyFab.extended', [
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

  TableRow _buildRow(String title, List<Widget> children) {
    return TableRow(children: [
      // SizedBox(width: 8),
      Text(title),
      for (final child in children) ...[
        const SizedBox(width: 8),
        Center(child: child),
      ],
      // SizedBox(width: 8),
    ]);
  }

  TableRow _buildSpacerRow() =>
      TableRow(children: List.filled(11, const SizedBox(height: 8)));
}
