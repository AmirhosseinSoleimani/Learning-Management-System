import '../../domain/category_model/category_model.dart';
import '../resources/assets_manager.dart';


// const List<String> categoriesList = [
//   'Development',
//   'Finance &  Accounting',
//   'Office Productivity',
//   'Business',
//   'IT & Software',
//   'Design',
//   'Marketing',
//   'Lifestyle',
//   'Music',
//   'Health & Fitness',
//   'Teaching & Academics',
// ];

List<CategoryModel> categoriesList = [
  CategoryModel(name: 'Development',picture: IconManagerAssets.development),
  CategoryModel(name: 'Finance &  Accounting',picture: IconManagerAssets.finance),
  CategoryModel(name: 'Office Productivity',picture: IconManagerAssets.productivity),
  CategoryModel(name: 'Business',picture: IconManagerAssets.business),
  CategoryModel(name: 'IT & Software',picture: IconManagerAssets.iT),
  CategoryModel(name: 'Design',picture: IconManagerAssets.design),
  CategoryModel(name: 'Marketing',picture: IconManagerAssets.marketing),
  CategoryModel(name: 'Lifestyle',picture: IconManagerAssets.lifestyle),
  CategoryModel(name: 'Music',picture: IconManagerAssets.music),
  CategoryModel(name: 'Health & Fitness',picture: IconManagerAssets.healthy),
  CategoryModel(name: 'Teaching & Academics',picture: IconManagerAssets.academic),
  CategoryModel(name: 'Photography & Video',picture: IconManagerAssets.photograph),

];