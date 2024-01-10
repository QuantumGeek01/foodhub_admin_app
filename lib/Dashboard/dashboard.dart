import 'package:flutter/material.dart';
import 'list_items.dart';
import 'top_section.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('Dashboard',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
      backgroundColor:Colors.deepPurple,),
      body:const Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child:TopSection(),
          ),
          Positioned(
            top: 200.0,
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: ListItems()
          ),
        ],
      )
    );
  }
}
