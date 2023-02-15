import 'package:flutter/material.dart';
import '../../../presentation/resources/assets_manager.dart';
import '../../../presentation/resources/color_manager.dart';
import '../../../presentation/resources/values_manager.dart';
import '../../../presentation/widgets/navigation_bar_widgets/account.dart';
import '../../../presentation/widgets/navigation_bar_widgets/explore.dart';
import '../../../presentation/widgets/navigation_bar_widgets/home_page.dart';
import '../../../presentation/widgets/navigation_bar_widgets/my_learning.dart';
import '../../../presentation/widgets/navigation_bar_widgets/wishlist.dart';
import '../../../presentation/widgets/widgets.dart';

class NavigationBarProvider with ChangeNotifier{
  final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.homeLight, svgActivePicturePath: IconManagerAssets.home),
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.searchLight, svgActivePicturePath: IconManagerAssets.search),
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.videoPlayerLight, svgActivePicturePath: IconManagerAssets.videoPlayer),
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.favouriteLight, svgActivePicturePath: IconManagerAssets.favourite),
    customNavigationBar(color: ColorManager.white, iconSize: AppSize.s30, svgPicturePath: IconManagerAssets.accountLight, svgActivePicturePath: IconManagerAssets.account),
  ];

  List<BottomNavigationBarItem> get bottomNavigationBarItems => _bottomNavigationBarItems;

  final List<Widget> _bottomNavigationBarWidget = [
    const HomePage(),
    const Explore(),
    const MyLearning(),
    const Wishlist(),
    const Account(),
  ];

  List<Widget> get bottomNavigationBarWidget => _bottomNavigationBarWidget;

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void isSelectedIndex(int value){
    _selectedIndex = value;
    notifyListeners();
  }
}
