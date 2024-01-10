import 'package:flutter/material.dart';
import 'login.dart';
import 'registration.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                title: const Text('DIU FOOD-HUB',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: "Babes")),
                centerTitle: true,
                flexibleSpace: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.deepPurple, Colors.green],
                            begin: FractionalOffset(0.0, 0.0),
                            end: FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp))),
            ),
            body:Container(
                   height:double.infinity,
                   decoration:const BoxDecoration(
                       gradient:LinearGradient(
                        //begin:Alignment.topRight,
                        //end:Alignment.bottomLeft,
                        colors:[
                          Colors.green,
                          Colors.deepPurple
                        ]
                    )
                ),
                   child:const LoginScreen()
            )));
  }
}
