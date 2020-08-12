import '../model/product_model.dart';


List<ProductModel> getProduct(){

  String mcDonalUrl = "https://www.freepnglogos.com/uploads/mcdonalds-png-logo/mcdonalds-png-logo-simple-m-1.png";
  String burgerKingUrl = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Burger_King_logo.svg/1012px-Burger_King_logo.svg.png";
  String kfcUrl = "https://i.pinimg.com/originals/23/e6/64/23e664116abe4788c7d8750ab9379b5f.png";
  String desc= "A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, "
      "but the burger can include variations in structure, ingredients and composition. The cheese is usually added to the cooking "
      "hamburger patty shortly before serving, which allows the cheese to melt.";

  List<ProductModel> productList = List<ProductModel>();
  ProductModel productModel;

  //cheese burgers
  productModel = new ProductModel();
  productModel.productName = "Cheese Burger";
  productModel.productImage = "https://i.pinimg.com/originals/22/d2/c1/22d2c1d2227f8e31025bfa101a8340df.png";
  productModel.companyImage = mcDonalUrl;
  productModel.description = desc;
  productModel.kCal=486;
  productModel.fat=13;
  productModel.carbs=51;
  productModel.protein=22;
  productList.add(productModel);

  //longer
  productModel = new ProductModel();
  productModel.productName = "Longer";
  productModel.productImage = "https://bk-latam-prod.s3.amazonaws.com/sites/burgerking.bs/files/xlCheeseburger-thumb.png";
  productModel.companyImage = kfcUrl;
  productModel.description = desc;
  productModel.kCal=456;
  productModel.fat=16;
  productModel.carbs=61;
  productModel.protein=19;
  productList.add(productModel);

  //beef Burger
  productModel = new ProductModel();
  productModel.productName = "Beef Burger";
  productModel.productImage = "https://crispychicken.rest/wp-content/uploads/2018/07/Beef-Burger-.png";
  productModel.companyImage = kfcUrl;
  productModel.description = desc;
  productModel.kCal=524;
  productModel.fat=19;
  productModel.carbs=61;
  productModel.protein=35;
  productList.add(productModel);

  //maharaja mac
  productModel = new ProductModel();
  productModel.productName = "Maharaja Mac";
  productModel.productImage = "https://i.pinimg.com/originals/b4/7d/cc/b47dcc449a889067e6beb6f40908e5a9.png";
  productModel.companyImage = mcDonalUrl;
  productModel.description = desc;
  productModel.kCal=462;
  productModel.fat=16;
  productModel.carbs=31;
  productModel.protein=19;
  productList.add(productModel);

  //whooper sandwich
  productModel = new ProductModel();
  productModel.productName = "WHOPPER Sandwich";
  productModel.productImage = "https://www.hungryjacks.com.au/Upload/HJ/Media/Menu/product/Main/1000_Whopper_1.png";
  productModel.companyImage = burgerKingUrl;
  productModel.description = desc;
  productModel.kCal=464;
  productModel.fat=12;
  productModel.carbs=56;
  productModel.protein=23;
  productList.add(productModel);

  return productList;

}