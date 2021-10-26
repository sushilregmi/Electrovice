import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "Electrovice",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            tileColor: Color(0xFFFCFAF8),
            leading: Icon(
              Icons.computer,
            ),
            title: Text('Components', style: TextStyle(fontSize: 24)),
          ),
          ListTile(
            onTap: () {},
            tileColor: Color(0xFFFCFAF8),
            leading: Icon(
              Icons.person,
            ),
            title: Text('About', style: TextStyle(fontSize: 24)),
          )
        ],
      ),
    );
  }
}
