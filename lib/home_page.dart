import 'package:flutter/material.dart';
import 'activate_seller_acc.dart';
import 'activate_user_acc.dart';
import 'block_seller_acc.dart';
import 'block_user_acc.dart';
import 'navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Admin portal',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children:[
            SizedBox(
                height: 200,
                width: double.infinity,
                child: InkWell(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder:(c)=>const UserActivateAccount()));
                  },
                  child:const Card(
                      color: Colors.green,
                      child:Center(
                          child:Row(
                            mainAxisSize:MainAxisSize.min,
                            children: [
                              Icon(Icons.person_add,color:Colors.white),
                              SizedBox(width:10),
                              Text('ACTIVATE USERS ACCOUNTS',
                                  style:TextStyle(
                                      fontSize:20,
                                      fontWeight:FontWeight.bold,
                                      color:Colors.white,
                                      letterSpacing:0.5
                                  ))
                            ],
                          )
                      )
                  ),
                ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: InkWell(
                onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder:(c)=>const UserBlockAccount()));
                },
                child:const Card(
                    color: Colors.deepPurple,
                    child:Center(
                        child:Row(
                          mainAxisSize:MainAxisSize.min,
                          children: [
                            Icon(Icons.block,color:Colors.white),
                            SizedBox(width:10),
                            Text('BLOCK USERS ACCOUNTS',
                                style:TextStyle(
                                    fontSize:20,
                                    fontWeight:FontWeight.bold,
                                    color:Colors.white,
                                    letterSpacing:1.5
                                ))
                          ],
                        )
                    )
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: InkWell(
                onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder:(c)=>const SellerActivateAccount()));
                },
                child:const Card(
                    color: Colors.green,
                    child:Center(
                        child:Row(
                          mainAxisSize:MainAxisSize.min,
                          children: [
                            Icon(Icons.person_add,color:Colors.white),
                            SizedBox(width:10),
                            Text('ACTIVATE SELLERS ACCOUNTS',
                                style:TextStyle(
                                    fontSize:20,
                                    fontWeight:FontWeight.bold,
                                    color:Colors.white,
                                    letterSpacing:0.5
                                ))
                          ],
                        )
                    )
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: InkWell(
                onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder:(c)=>const SellerBlockAccounts()));
                },
                child:const Card(
                    color: Colors.deepPurple,
                    child:Center(
                        child:Row(
                          mainAxisSize:MainAxisSize.min,
                          children: [
                            Icon(Icons.block,color:Colors.white),
                            SizedBox(width:10),
                            Text('BLOCK SELLERS ACCOUNTS',
                                style:TextStyle(
                                    fontSize:20,
                                    fontWeight:FontWeight.bold,
                                    color:Colors.white,
                                    letterSpacing:1.5
                                ))
                          ],
                        )
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
