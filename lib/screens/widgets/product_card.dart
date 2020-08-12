import 'package:flutter/material.dart';


import '../item.dart';
import '../../model/product_model.dart';

class ProductCard extends StatelessWidget {

  final String imageUrl ;
  final String companyUrl;
  final String productName ;

  final ProductModel productDetails;



  ProductCard({@required this. imageUrl,@required this.companyUrl, @required this.productName, @required this.productDetails});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ItemScreen(productDetails: this.productDetails,),
        ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width*0.4,
        height: MediaQuery.of(context).size.height*0.45,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                offset: Offset(2,2),blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.all(
              Radius.circular(5.0)
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 8,
              left: 8,
              height: 20,
              width: 20,
              child: Image(
                image: NetworkImage(companyUrl),
                fit: BoxFit.fill,
              ),
            ),

            Positioned(
              left: MediaQuery.of(context).size.width*0.01,
              top: MediaQuery.of(context).size.height*0.02,
               child: Image(
                image: NetworkImage(imageUrl),
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.32,
                fit: BoxFit.contain,
               ),
             ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.transparent,
                child: Text(
                  productName,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


//      child: Container(
//        width: MediaQuery.of(context).size.width*0.4,
//        height: MediaQuery.of(context).size.height*0.45,
//        padding: EdgeInsets.all(10),
//        decoration: BoxDecoration(
//          color: Colors.white,
//          boxShadow: [
//            BoxShadow(
//                color: Colors.black12,
//                spreadRadius: 2,
//                offset: Offset(2,2),blurRadius: 10,
//            ),
//          ],
//          borderRadius: BorderRadius.all(
//              Radius.circular(5.0)
//          ),
//        ),
//        child: Column(
//          children: <Widget>[
////            Image(
////              alignment: Alignment(-1, -1),
////              image: NetworkImage(companyUrl),
////              height: MediaQuery.of(context).size.height*0.05,
////              width: MediaQuery.of(context).size.width*0.05,
////              fit: BoxFit.contain,
////            ),
//            Image(
//              image: NetworkImage(imageUrl),
//              height: MediaQuery.of(context).size.height*0.25,
//              width: MediaQuery.of(context).size.width*0.32,
//              fit: BoxFit.contain,
//            ),
//            Container(
//              color: Colors.transparent,
//              child: Text(
//                productName,
//                softWrap: true,
//                style: TextStyle(
//                  color: Colors.black,
//                  fontSize: 15,
//                  fontWeight: FontWeight.bold
//                ),
//              ),
//            ),
//          ],
//        ),
//
//      ),
