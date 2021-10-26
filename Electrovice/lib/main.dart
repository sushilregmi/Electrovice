import 'package:flutter/material.dart';
import 'package:secondapp/categories_screen.dart';

import 'package:secondapp/category_device.dart';
import 'package:secondapp/dummy_data.dart';
import 'package:secondapp/models/device.dart';
import 'package:secondapp/tabs_screen.dart';
import './device_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Device> _favouriteDevice = [];

  void _toggleFavourite(String deviceId) {
    final existingindex =
        _favouriteDevice.indexWhere((element) => element.id == deviceId);
    if (existingindex >= 0) {
      setState(() {
        _favouriteDevice.removeAt(existingindex);
      });
    } else {
      setState(() {
        _favouriteDevice
            .add(Dummy_Device.firstWhere((element) => element.id == deviceId));
      });
    }
  }

  bool _isDeviceFavourite(String id) {
    return _favouriteDevice.any((element) => element.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/': (ctx) => TabScreen(_favouriteDevice),
          '/categoriesdevice': (ctx) => CategoryDeviceScreen(),
          DeviceDetailScreen.routeName: (ctx) =>
              DeviceDetailScreen(_toggleFavourite, _isDeviceFavourite),
        },
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        },
        theme: ThemeData(
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: TextStyle(
                fontSize: 24,
              )),
        ));
  }
}
