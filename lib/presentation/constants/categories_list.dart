import 'package:learning_management_system/presentation/widgets/widgets.dart';
import '../../domain/category_model/category_model.dart';
import '../resources/assets_manager.dart';



List<CategoryModel> categoriesList = [
  CategoryModel(name: 'Development',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.development)),
  CategoryModel(name: 'Finance &  Accounting',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.finance)),
  CategoryModel(name: 'Office Productivity',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.productivity)),
  CategoryModel(name: 'Business',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.business)),
  CategoryModel(name: 'IT & Software',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.iT)),
  CategoryModel(name: 'Design',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.design)),
  CategoryModel(name: 'Marketing',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.marketing)),
  CategoryModel(name: 'Lifestyle',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.lifestyle)),
  CategoryModel(name: 'Music',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.music)),
  CategoryModel(name: 'Health & Fitness',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.healthy)),
  CategoryModel(name: 'Teaching & Academics',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.academic)),
  CategoryModel(name: 'Photography & Video',svgPicture: svgPicture(svgPictureAddress: IconManagerAssets.photograph)),

];