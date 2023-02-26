import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';

import '../../domain/category_model/category_model.dart';
import '../resources/assets_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  CategoryModel(name: 'Development',svgPicture: SizedBox(width: 30, height: 30, child: SvgPicture.asset(IconManagerAssets.development,))),
  CategoryModel(name: 'Finance &  Accounting',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.finance,color: ColorManager.white,))),
  CategoryModel(name: 'Office Productivity',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.productivity,color: ColorManager.white))),
  CategoryModel(name: 'Business',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.business,color: ColorManager.white))),
  CategoryModel(name: 'IT & Software',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.iT,color: ColorManager.white))),
  CategoryModel(name: 'Design',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.design,color: ColorManager.white))),
  CategoryModel(name: 'Marketing',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.marketing,color: ColorManager.white))),
  CategoryModel(name: 'Lifestyle',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.lifestyle,color: ColorManager.white))),
  CategoryModel(name: 'Music',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.music,color: ColorManager.white))),
  CategoryModel(name: 'Health & Fitness',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.healthy,color: ColorManager.white))),
  CategoryModel(name: 'Teaching & Academics',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.academic,color: ColorManager.white))),
  CategoryModel(name: 'Photography & Video',svgPicture: SizedBox(
      width: 30,
      height: 30,
      child: SvgPicture.asset(IconManagerAssets.photograph,color: ColorManager.white))),

];