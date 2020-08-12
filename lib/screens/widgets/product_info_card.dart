import 'package:flutter/material.dart';

class ProductInfoCard extends StatelessWidget {

  final String infoType;
  final String infoNumber;

  ProductInfoCard({@required this.infoType,@required this.infoNumber});


  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(color: Colors.red),
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10,bottom: 15),
            child: Text(infoType,textAlign: TextAlign.center,softWrap: true,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
          ),

          Container(
            padding: EdgeInsets.only(bottom: 15),
            child: Text(infoNumber,textAlign: TextAlign.center,softWrap: true,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
          ),

        ],
      ),
    );
  }
}
