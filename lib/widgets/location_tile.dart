import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tourismandco/models/location.dart';
import 'package:tourismandco/style.dart';

const LocationTileHeight = 100.0;

class LocationTile extends StatelessWidget {
  final Location _location;
  final bool _darkTheme;

  LocationTile(this._location, this._darkTheme);

  @override
  Widget build(BuildContext context) {
    final textColor = this._darkTheme ? TextColorLight : TextColorDark;
    return Container(      
        padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
        height: LocationTileHeight,
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _location.name.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style:
                  Theme.of(context).textTheme.title.copyWith(color: textColor),
            ),
            Text(
              _location.userItinerarySummary.toUpperCase(),
              style: Theme.of(context).textTheme.subtitle,
            ),
            Text(
              _location.tourPackageName.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: textColor),
            ),
          ],
        ));
  }
}
