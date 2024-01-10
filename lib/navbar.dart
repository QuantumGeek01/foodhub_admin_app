import 'package:flutter/material.dart';
import 'Dashboard/dashboard.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
       padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Md.Alamin"),
            accountEmail: const Text("alalmin256@gamil.com"),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/6596/6596121.png',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            )),
              decoration:const BoxDecoration(
                  color:Colors.deepPurple
              )
          ),
          Padding(
            padding:const EdgeInsets.only(left:5),
            child:ListTile(
              onTap:(){
                Navigator.pop(context);
              },
              leading:const Icon(Icons.home),
              title:const Text('Home'),
              contentPadding:const EdgeInsets.all(5),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(left:5),
            child: ListTile(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder:(c)=>const DashboardScreen()));
              },
              leading:const Icon(Icons.attach_money),
              title:const Text('Dashboard'),
              contentPadding:const EdgeInsets.all(5),
            ),
          ),
          const Padding(
            padding:EdgeInsets.only(left:5),
            child: ListTile(
              leading:Icon(Icons.logout),
              title:Text('Logout'),
              contentPadding:EdgeInsets.all(5),
            ),
          ),
        ],
      ),
    );
  }
}
