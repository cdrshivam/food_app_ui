import '../model/category_model.dart';


List<CategoryModel> getCategories(){

  List<CategoryModel> categories = List<CategoryModel>();
  CategoryModel categoryModel;

  //burgers
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Burgers";
  categoryModel.categoryImage = "https://www.mcdonalds.co.za/sites/default/files/productThumbnail/mcd-salads-and-vegetarian-veggie-burger.png";
  categories.add(categoryModel);

  //drinks
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Drinks";
  categoryModel.categoryImage = "https://www.dynamicgreens.com/app/uploads/2015/09/low-fat-smoothies.png";
  categories.add(categoryModel);

  //wraps
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Wraps";
  categoryModel.categoryImage = "https://app.hungryjacks.com.au/Upload/HJ/Media/Menu/Product/Main/3522_Tendercrisp_Avocado_BLT_Wrap_WEB_1.png";
  categories.add(categoryModel);

  //vegan
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Vegan";
  categoryModel.categoryImage = "https://www.catermefit.com/wp-content/uploads/2015/12/veg.png";
  categories.add(categoryModel);

  //beer
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Beer";
  categoryModel.categoryImage = "https://www.horiba.com/fileadmin/_processed_/csm_01_02-2019_Beer_Brewing_53ef2818e5.png";
  categories.add(categoryModel);


  return categories;

}