import 'package:flutter/material.dart';

class ListItems extends StatefulWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  final List<Map<String,dynamic>> _restaurants = [
    {
      "id":1,
      "name":"Big Burger",
      "image":
      "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/277655844/original/3a050072606f0f0f95d8d6a21723e62b8f51bea5/do-burgar-logo-specially-for-brand-with-any-copyrights.jpg",
      "earnings":450
    },
    {
      "id":2,
      "name":"Food Corner",
      "image":
      "https://t3.ftcdn.net/jpg/02/41/30/72/360_F_241307210_MjjaJC3SJy2zJZ6B7bKGMRsKQbdwRSze.jpg",
      "earnings":1250
    },
    {
      "id":3,
      "name":"Cafe Ajmir",
      "image":
      "https://static.vecteezy.com/system/resources/thumbnails/002/412/377/small/coffee-cup-logo-coffee-shop-icon-design-free-vector.jpg",
      "earnings":200
    },
    {
      "id":4,
      "name":"Pizza point",
      "image":
      "https://img.freepik.com/premium-vector/pizza-logo-vector_25327-119.jpg",
      "earnings":800
    },
    {
      "id":5,
      "name":"Testy Fast-Food",
      "image":
      "https://img.freepik.com/free-vector/restaurant-tasty-food-logo-design_460848-10307.jpg",
      "earnings":300
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                      Text('Total Earnings: ${_restaurants[index]['earnings']}',
                          style:const TextStyle(fontSize:18)),

                    ],
                  ),
                  const Spacer(),
                  const Text('20%',
                      style:TextStyle(fontSize:18)),
                ],
              )
          );
        }
    );
  }
}
