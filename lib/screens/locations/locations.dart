import 'package:flutter/material.dart';
import 'package:tourismandco/app.dart';
import 'package:tourismandco/screens/location_detail/image_banner.dart';
import 'package:tourismandco/screens/locations/tile_overlay.dart';

import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) =>
              _itemBuilder(context, locations[index])),
    );
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      onTap: () => _onLocationTap(context, location.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(location.imagePath, 245.0),
            TileOverlay(location),
          ],
        ),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationId});
  }
}
