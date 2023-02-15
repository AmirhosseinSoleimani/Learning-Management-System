import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/string_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<RefreshIndicatorState> refreshKey = GlobalKey<RefreshIndicatorState>();
    Future onRefresh() async{
      await Future.delayed(const Duration(seconds: 4));
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black,
        body: RefreshIndicator(
          key: refreshKey,
          onRefresh: onRefresh,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                expandedHeight: AppSize.s300,
                stretch: true,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppPadding.p12),
                  child: FlexibleSpaceBar(
                    stretchModes: const [
                      StretchMode.zoomBackground
                    ],
                    background: Stack(
                      children: [
                        Container(
                          color: ColorManager.white,
                        ),
                        const Positioned.fill(
                          child: Image(
                            image: AssetImage(
                              ImageManagerAssets.headerHomePage,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverAppBar(
                pinned: true,
                expandedHeight: 150,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppPadding.p12),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    color: ColorManager.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            AppStringHomePage.headerText,
                            style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: AppSize.s1,
                              color: Colors.grey,
                            ),
                              borderRadius: BorderRadius.circular(AppPadding.p12)
                          )
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (context,index) => Card(
                        child: Text('item: ${index +1}'),
                      ),
                    childCount: 50
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
