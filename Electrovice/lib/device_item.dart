import 'package:flutter/material.dart';
import 'package:secondapp/device_detail.dart';

class DeviceItem extends StatelessWidget {
  const DeviceItem({Key? key, required this.title, required this.id})
      : super(key: key);
  final String title;
  final String id;
  void selectDevice(BuildContext context) {
    Navigator.of(context)
        .pushNamed(DeviceDetailScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDevice(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1),
        ),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
                fontFamily: 'Raleway'),
          ),
        ),
      ),
    );
  }
}
