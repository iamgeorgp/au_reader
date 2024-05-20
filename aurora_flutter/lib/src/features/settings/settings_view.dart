import 'package:flutter/material.dart';

import 'settings_block.dart';

class SettingsView extends StatelessWidget {
  final List<SettingsBlock> settingBlocksList;
  const SettingsView({
    required this.settingBlocksList,
    super.key,
  });

  const SettingsView.fromDefault({
    required this.settingBlocksList,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: settingBlocksList.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (BuildContext context, int index) =>
            settingBlocksList[index],
      );
}
