import 'package:flutter/material.dart';

class SellerActivateAccount extends StatefulWidget {
  const SellerActivateAccount({Key? key}) : super(key: key);

  @override
  State<SellerActivateAccount> createState() => _SellerActivateAccountState();
}

class _SellerActivateAccountState extends State<SellerActivateAccount> {
  final List<Map<String,dynamic>> _restaurants = [
    {
      "id":1,
      "name":"Big Burger",
      "image":
      "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/277655844/original/3a050072606f0f0f95d8d6a21723e62b8f51bea5/do-burgar-logo-specially-for-brand-with-any-copyrights.jpg",
    },
    {
      "id":2,
      "name":"Food Corner",
      "image":
      "https://t3.ftcdn.net/jpg/02/41/30/72/360_F_241307210_MjjaJC3SJy2zJZ6B7bKGMRsKQbdwRSze.jpg",
    },
    {
      "id":3,
      "name":"Cafe Ajmir",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/002/412/377/small/coffee-cup-logo-coffee-shop-icon-design-free-vector.jpg",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:const Text('Sellers - Block Accounts',
              style:TextStyle(fontSize: 20,
                  letterSpacing:0.5,
                  color:Colors.white)),
          centerTitle:true,
          backgroundColor:Colors.deepPurple,
        ),
        body:ListView.builder(
            itemCount:_restaurants.length,
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
                              _restaurants[index]['image'].toString(),
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
                          Text(_restaurants[index]['name'].toString(),
                              style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
                          SizedBox(
                              width:130,
                              height:40,
                              child: ElevatedButton(
                                onPressed:(){
                                  showDialog(context: context, builder:(context){
                                    return AlertDialog(
                                      title:const Text('Block Account',
                                          style:TextStyle(letterSpacing:1.0)),
                                      content:const Text('Do you want to activate this account?'),
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
                                    backgroundColor:Colors.green,
                                    shape:const RoundedRectangleBorder(
                                        borderRadius:BorderRadius.zero
                                    )
                                ),
                                child:const Text('Activate', style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:19)),
                              ))
                        ],
                      ),
                    ],
                  )
              );
            }
        )
    );
  }
}
