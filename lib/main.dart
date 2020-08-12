import 'package:flutter/material.dart';

import './screens/category.dart';

void main()
{
  runApp(
    MaterialApp(
      title: 'Food app',
      debugShowCheckedModeBanner: false,
      home: CategoryScreen(),
    ),
  );
}