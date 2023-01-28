import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_management_system/presentation/constants/navigation_bar_items.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/account.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/explore.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/home_page.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/my_learning.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/wishlist.dart';
import '../resources/icon_manager.dart';
import '../resources/string_manager.dart';
import '../resources/values_manager.dart';
import 'navigation_state.dart';
import 'navigation_cubit.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      bottomNavigationBar: BlocBuilder<NavigationCubit,NavigationState>(
        builder: (context,state){
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: ColorManager.black,
              unselectedItemColor: ColorManager.whiteWhitOpacity60,
              selectedItemColor: ColorManager.white,
              selectedFontSize: AppSize.s14,
              unselectedFontSize: AppSize.s14,
              currentIndex: state.index,
              showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(
                    AppIcon.home2,
                  ),
                label: AppString.home,
                activeIcon: Icon(
                  AppIcon.homeActive
                ),
              ),
              BottomNavigationBarItem(
                icon: FaIcon(
                  AppIcon.explore,
                ),
                label: AppString.explore,
                activeIcon: Icon(
                    AppIcon.exploreActive
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  AppIcon.myLearning,
                ),
                label: AppString.myLearning,
                activeIcon: Icon(
                    AppIcon.myLearningActive
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  AppIcon.wishlist,
                ),
                label: AppString.wishlist,
                activeIcon: Icon(
                    AppIcon.wishlistActive
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  AppIcon.account,
                ),
                label: AppString.account,
                activeIcon: Icon(
                    AppIcon.accountActive
                ),
              ),
            ],
            onTap: (index){
                if(index == 0){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.home);
                }else if(index == 1){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.explore);
                }else if(index == 2){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.myLearning);
                }else if(index == 3){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.wishlist);
                }else if(index == 4){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.account);
                }
            },
          );
        },
      ),
      body: BlocBuilder<NavigationCubit,NavigationState>(
        builder: (context,state){
          if(state.navbarItem == NavbarItem.home){
            return const HomePage();
          }else if(state.navbarItem == NavbarItem.explore){
            return const Explore();
          }else if(state.navbarItem == NavbarItem.myLearning){
            return const MyLearning();
          }else if(state.navbarItem == NavbarItem.wishlist){
            return const Wishlist();
          }else if(state.navbarItem == NavbarItem.account){
            return const Account();
          }else{
            return Container();
          }
        },
      )
    );
  }
}
