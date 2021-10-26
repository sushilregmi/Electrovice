import 'package:flutter/material.dart';
import 'package:secondapp/device_item.dart';
import './dummy_data.dart';

class CategoryDeviceScreen extends StatelessWidget {
  const CategoryDeviceScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryDevice = Dummy_Device.where((device) {
      return device.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          categoryTitle!,
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 30,
            color: Color(0xFF545D68),
          ),
        ),
        backgroundColor: Color(
          0xFFFCFAF8,
        ),
        elevation: 5.0,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return DeviceItem(
            title: categoryDevice[index].title,
            id: categoryDevice[index].id,
          );
        },
        itemCount: categoryDevice.length,
      ),
    );
  }
}
