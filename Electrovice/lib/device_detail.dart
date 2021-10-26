import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './dummy_data.dart';

class DeviceDetailScreen extends StatelessWidget {
  DeviceDetailScreen(this.toogleFavourite, this.isFavourite);

  final Function toogleFavourite;
  final Function isFavourite;
  static const routeName = '/devicedetail';
  buildlist(selectedDevice) {
    return ListView.builder(
        itemCount: selectedDevice.detail.length,
        itemBuilder: (context, int index) {
          return Text('df');
        });
  }

  @override
  Widget build(BuildContext context) {
    final deviceId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedDevice =
        Dummy_Device.firstWhere((device) => device.id == deviceId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedDevice.title,
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 30,
            color: Color(0xFF545D68),
          ),
        ),
        backgroundColor: Color(
          0xffe9ecef,
        ),
        elevation: 5.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        // physics: ScrollPhysics(),
        child: Column(children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: AssetImage(selectedDevice.images[0]),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: selectedDevice.detail.length,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(selectedDevice.detail[index],
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w400)),
                );
              })
        ]),
      ),
      backgroundColor: Color(0xffe9ecef),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        child: Icon(
          isFavourite(deviceId) ? Icons.star : Icons.star_border,
          color: Colors.black,
        ),
        onPressed: () => toogleFavourite(deviceId),
      ),
    );
  }
}
