import 'package:flutter/material.dart';

import './widgets/product_info_card.dart';
import '../model/product_model.dart';

class ItemScreen extends StatefulWidget {

  final ProductModel productDetails;

  ItemScreen({@required this.productDetails});

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.favorite_border,color: Colors.black,), onPressed: null,padding: EdgeInsets.only(right: 10),),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
          Container(
                margin: EdgeInsets.only(bottom: 10,top: 10),
                color: Colors.transparent,
                child: Text(
                  widget.productDetails.productName,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),

            Image(
                image: NetworkImage(widget.productDetails.companyImage),
                height: MediaQuery.of(context).size.height*0.1,
                width: MediaQuery.of(context).size.width*0.12,
                fit: BoxFit.contain,
              ),


            Image(
                image: NetworkImage(widget.productDetails.productImage),
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.5,
                fit: BoxFit.cover,
              ),

            SizedBox(height: 40,),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ProductInfoCard(infoType: "KCal" , infoNumber: widget.productDetails.kCal.toString()),
                  ProductInfoCard(infoType: "Fats" , infoNumber: widget.productDetails.fat.toString()),
                  ProductInfoCard(infoType: "Carbs" , infoNumber: widget.productDetails.carbs.toString()),
                  ProductInfoCard(infoType: "Protein" , infoNumber: widget.productDetails.protein.toString()),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 50),
              child: Text(
                widget.productDetails.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Colors.black87,
                  wordSpacing: 2,
                  letterSpacing: 1.2
                ),
              ),
            ),



          ],
        ),

      ),
    );
  }
}
//
//        child: Stack(
//          children: <Widget>[
//            Align(
//              alignment: Alignment.topCenter,
//              child: Container(
//                margin: EdgeInsets.only(bottom: 10,top: 10),
//                color: Colors.transparent,
//                child: Text(
//                  widget.productDetails.productName,
//                  textAlign: TextAlign.center,
//                  softWrap: true,
//                  style: TextStyle(
//                      color: Colors.black,
//                      fontSize: 22,
//                      fontWeight: FontWeight.w700
//                  ),
//                ),
//              ),
//            ),
//
//            Positioned(
//              left: MediaQuery.of(context).size.width*0.45,
//              top: MediaQuery.of(context).size.height*0.06,
//              child: Image(
//                image: NetworkImage(widget.productDetails.companyImage),
//                height: MediaQuery.of(context).size.height*0.1,
//                width: MediaQuery.of(context).size.width*0.1,
//                fit: BoxFit.contain,
//              ),
//            ),
//
//
//            Align(
//             alignment: Alignment.center,
//              child: Image(
//                image: NetworkImage(widget.productDetails.productImage),
//                height: MediaQuery.of(context).size.height*0.6,
//                width: MediaQuery.of(context).size.width*0.6,
//                fit: BoxFit.contain,
//              ),
//            ),
//
//
//            Positioned(
//              top: MediaQuery.of(context).size.height*0.5,
//              child: Container(
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    ProductInfoCard(infoType: "KCal" , infoNumber: widget.productDetails.kCal.toString()),
//                    ProductInfoCard(infoType: "Fats" , infoNumber: widget.productDetails.fat.toString()),
//                    ProductInfoCard(infoType: "Carbs" , infoNumber: widget.productDetails.carbs.toString()),
//                    ProductInfoCard(infoType: "Protein" , infoNumber: widget.productDetails.protein.toString()),
//                  ],
//                ),
//              )
//            ),
//
//
//
//            Positioned(
//                top: MediaQuery.of(context).size.height*0.58,
//                child: Container(
//                  child: Text(
//                    widget.productDetails.description,
//                    overflow: TextOverflow.ellipsis,
//                    softWrap: true,
//                    textAlign: TextAlign.center,
//                    style: TextStyle(
//                        fontWeight: FontWeight.w500,
//                        fontSize: 10,
//                        color: Colors.black54,
//                    ),
//                  ),
//                ),
//            ),
//
//
//
//
//
//
//          ],
//        ),
