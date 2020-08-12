import 'package:flutter/material.dart';


import '../product_list.dart';

class CategoryCard extends StatelessWidget {

  final String imageUrl ;
  final String categoryName ;

  CategoryCard({@required this. imageUrl, @required this.categoryName});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ProductScreen(),
        ));
      },

      child: Container(
        width: MediaQuery.of(context).size.width*0.4,
        height: MediaQuery.of(context).size.height*0.45,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.yellow[600],
          borderRadius: BorderRadius.all(
              Radius.circular(5.0)
          ),
        ),
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(imageUrl),
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width*0.32,
              fit: BoxFit.contain,
            ),
            Container(
              color: Colors.transparent,
              child: Text(
                categoryName,
                softWrap: true,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
