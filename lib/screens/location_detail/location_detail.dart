import 'package:flutter/material.dart';
import 'package:tourismandco/widgets/image_banner.dart';
import 'package:tourismandco/widgets/location_tile.dart';
import 'package:tourismandco/models/location.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationId);

    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(location.imagePath, 200.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
                child: LocationTile(location, false),
              )
            ]..addAll(textSection(location)),
          ),
        )
      );
  }

  List<Widget> textSection(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
