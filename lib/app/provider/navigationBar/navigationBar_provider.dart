import 'package:flutter/material.dart';

import '../../../presentation/resources/assets_manager.dart';
import '../../../presentation/resources/color_manager.dart';
import '../../../presentation/resources/values_manager.dart';
import '../../../presentation/widgets/widgets.dart';

class NavigationBarProvider with ChangeNotifier{
  List<BottomNavigationBarItem> bottomNavigationBarItem = [
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.homeLight, svgActivePicturePath: IconManagerAssets.home),
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.searchLight, svgActivePicturePath: IconManagerAssets.search),
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.videoPlayerLight, svgActivePicturePath: IconManagerAssets.videoPlayer),
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.favouriteLight, svgActivePicturePath: IconManagerAssets.favourite),
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.accountLight, svgActivePicturePath: IconManagerAssets.account),
  ];
}
