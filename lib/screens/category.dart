import 'package:flutter/material.dart';

import './widgets/category_card.dart';
import '../utils/category_data.dart';
import '../model/category_model.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  List<CategoryModel> categoryList = getCategories();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[600],
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Hello',softWrap: true,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),
                        Text('Find your meal!',softWrap: true,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.vertical(
                         top: Radius.circular(35),
                      ),
                    ),

                    child: GridView.builder(
                      padding: EdgeInsets.all(30),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: categoryList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index)
                        {
                          return CategoryCard(
                            imageUrl: categoryList[index].categoryImage,
                            categoryName: categoryList[index].categoryName,);
                          },
                    ),

                  ),

                ],
              ),
          ),
        ),

    );
  }
}
