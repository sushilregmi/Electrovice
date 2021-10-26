import 'package:flutter/material.dart';
import '../models/device.dart';
import './device_item.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Device> favouriteDevice;
  FavouriteScreen(this.favouriteDevice);

  @override
  Widget build(BuildContext context) {
    if (favouriteDevice.isEmpty) {
      return Center();
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return DeviceItem(
            title: favouriteDevice[index].title,
            id: favouriteDevice[index].id,
          );
        },
        itemCount: favouriteDevice.length,
      );
    }
  }
}
