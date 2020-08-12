import 'package:flutter/material.dart';

import '../utils/product_data.dart';
import './widgets/product_card.dart';
import '../model/product_model.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  List<ProductModel> productList = getProduct();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "List of products",
          softWrap: true,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),

      body: GridView.builder(
        padding: EdgeInsets.all(30),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index)
        {
          return ProductCard(
            imageUrl: productList[index].productImage,
            companyUrl: productList[index].companyImage,
            productName: productList[index].productName,
            productDetails: productList[index],
          );
        },
      ),

    );
  }
}
