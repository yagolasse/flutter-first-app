
import 'package:flutter/material.dart';
import 'package:tourismandco/models/location.dart';
import 'package:tourismandco/widgets/location_tile.dart';

class TileOverlay extends StatelessWidget {

  final Location _location;

  TileOverlay(this._location);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: LocationTile(_location, true),
        )
      ],
    );
  }
}