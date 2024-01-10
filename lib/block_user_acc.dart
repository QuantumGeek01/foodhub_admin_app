import 'package:flutter/material.dart';

class UserBlockAccount extends StatefulWidget {
  const UserBlockAccount({Key? key}) : super(key: key);

  @override
  State<UserBlockAccount> createState() => _UserBlockAccountState();
}

class _UserBlockAccountState extends State<UserBlockAccount> {
  final List<Map<String,dynamic>> _users = [
    {
      "name":"Md. Rahim",
      "phone":01758906792,
      "img":"https://cdn-icons-png.flaticon.com/512/6596/6596121.png"
    },
    {
      "name":"Faruqe Alom",
      "phone":01845038295,
      "img":"https://cdn-icons-png.flaticon.com/512/6596/6596121.png"
    },
    {
      "name":"Md. Faysal",
      "phone":01748051554,
      "img":"https://cdn-icons-png.flaticon.com/512/6596/6596121.png"
    },
    {
      "name":"Tanvir Ahmed",
      "phone":01860948267,
      "img":"https://cdn-icons-png.flaticon.com/512/6596/6596121.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:const Text('Users - Active Accounts',
              style:TextStyle(fontSize: 20,
                  letterSpacing:0.5,
                  color:Colors.white)),
          centerTitle:true,
          backgroundColor:Colors.deepPurple,
        ),
        body:ListView.builder(
            itemCount:_users.length,
            itemBuilder:(context,index){
              return Padding(
                  padding:const EdgeInsets.only(left:15,top:20,right:15,bottom:20),
                  child:Row(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      CircleAvatar(
                          maxRadius:35,
                          child: ClipOval(
                            child: Image.network(
                              _users[index]['img'].toString(),
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          )),
                      const SizedBox(width:15),
                      Column(
                        mainAxisSize:MainAxisSize.min,
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text(_users[index]['name'].toString(),
                              style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
                          Text(_users[index]['phone'].toString(),
                              style:const TextStyle(fontSize:18)),
                          SizedBox(
                              width:100,
                              height:40,
                              child: ElevatedButton(
                                onPressed:(){
                                  showDialog(context: context, builder:(context){
                                    return AlertDialog(
                                      title:const Text('Block Account',
                                          style:TextStyle(letterSpacing:1.0)),
                                      content:const Text('Do you want to block this account?'),
                                      actions:[
                                        SizedBox(
                                          width:100,
                                          child: ElevatedButton(
                                              onPressed:(){
                                                Navigator.pop(context);
                                              },
                                              style:ElevatedButton.styleFrom(
                                                  backgroundColor:Colors.green
                                              ),
                                              child:const Text('No',
                                                  style:TextStyle(color:Colors.white))
                                          ),
                                        ),
                                        SizedBox(
                                          width:100,
                                          child: ElevatedButton(
                                              onPressed:(){},
                                              style:ElevatedButton.styleFrom(
                                                  backgroundColor:Colors.green
                                              ),
                                              child:const Text('Yes',
                                                  style:TextStyle(color:Colors.white))
                                          ),
                                        )
                                      ],
                                      actionsAlignment:MainAxisAlignment.center,
                                    );
                                  });
                                },
                                style:ElevatedButton.styleFrom(
                                    backgroundColor:Colors.red,
                                    shape:const RoundedRectangleBorder(
                                        borderRadius:BorderRadius.zero
                                    )
                                ),
                                child:const Text('Block', style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold)),
                              ))
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed:(){
                            showDialog(context: context, builder:(context){
                              return AlertDialog(
                                title:const Text('Delete Account',
                                    style:TextStyle(letterSpacing:1.0)),
                                content:const Text('Do you want to Delete this account?'),
                                actions:[
                                  SizedBox(
                                    width:100,
                                    child: ElevatedButton(
                                        onPressed:(){
                                          Navigator.pop(context);
                                        },
                                        style:ElevatedButton.styleFrom(
                                            backgroundColor:Colors.green
                                        ),
                                        child:const Text('No',
                                            style:TextStyle(color:Colors.white))
                                    ),
                                  ),
                                  SizedBox(
                                    width:100,
                                    child: ElevatedButton(
                                        onPressed:(){},
                                        style:ElevatedButton.styleFrom(
                                            backgroundColor:Colors.green
                                        ),
                                        child:const Text('Yes',
                                            style:TextStyle(color:Colors.white))
                                    ),
                                  )
                                ],
                                actionsAlignment:MainAxisAlignment.center,
                              );
                            });
                          },
                          icon:const Icon(Icons.delete),
                          iconSize:30
                      )
                    ],
                  )
              );
            }
        )
    );
  }
}
