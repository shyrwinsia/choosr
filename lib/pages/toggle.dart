import 'package:dcydr/components/appbar.dart';
import 'package:dcydr/components/switchtile.dart';
import 'package:dcydr/data/types.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';

class TogglePage extends StatelessWidget {
  final RandomList list;

  TogglePage({this.list});

  @override
  Widget build(BuildContext context) {
    final Iterable<CustomSwitchTile> tiles = list.items.map(
      (RandomListItem item) => CustomSwitchTile(
        list: list,
        item: item,
      ),
    );

    final List<Widget> divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Toggle choices',
        hasBackButton: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FlatIcons.success,
              size: 18,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(children: divided),
    );
  }
}
