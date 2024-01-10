import 'package:flutter/material.dart';

class TopSection extends StatefulWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width:double.infinity,
      height:200,
      child:Card(
        elevation:5,
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.zero
        ),
        color:Colors.deepPurple,
        child:Column(
          mainAxisSize:MainAxisSize.min,
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:EdgeInsets.symmetric(vertical:0.0,horizontal:10),
              child: Text('Tk 1280.00',
                style:TextStyle(
                  fontSize:40,
                  color:Colors.white
                )
              ),
            ),
            Padding(
              padding:EdgeInsets.symmetric(vertical:0.0,horizontal:15),
              child: Text('Total Balance',
                  style:TextStyle(
                      fontSize:20,
                      letterSpacing:1,
                      fontWeight:FontWeight.bold,
                      color:Colors.white
                  )
              ),
            )
          ],
        )
      )
    );
  }
}
