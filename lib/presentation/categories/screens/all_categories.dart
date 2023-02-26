import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import '../../constants/categories_list.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manager.dart';
import '../../widgets/widgets.dart';


class AllCategories extends StatefulWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {

  ScrollController? scrollController;
  bool lastStatus = true;

  bool get isShrink{
    return scrollController != null && scrollController!.hasClients && scrollController!.offset > (AppSize.s50);
  }

  void scrollListener(){
    if(isShrink != lastStatus){
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()..addListener(scrollListener);
  }

  @override
  void dispose() {
    scrollController?.removeListener(scrollListener);
    scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          slivers: [
            SliverAppBar(
              stretch: true,
              pinned: true,
              toolbarHeight: AppSize.s60,
              expandedHeight: AppSize.s120,
              title: AnimatedOpacity(
                duration: const Duration(milliseconds: DurationConstant.d2000),
                opacity: isShrink ? AppSize.s1 : AppSize.s0,
                child: Text(
                  AppStringCategories.categories,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              centerTitle: true,
              leading: arrowBackButton(context: context),
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppPadding.p12),
                child: FlexibleSpaceBar(
                  stretchModes: const [StretchMode.zoomBackground],
                  centerTitle: true,
                  background: isShrink ? null : Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p12),
                      child: Text(
                        AppStringCategories.categories,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      width: double.infinity,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: categoriesList.length,
                          itemBuilder: (context,index) => GestureDetector(
                            onTap: (){
                              debugPrint(categoriesList[index].name!);
                            },
                            child: ListTile(
                              title: Text(
                                  categoriesList[index].name!,
                                  style: Theme.of(context).textTheme.headline4,
                              ),
                              leading: categoriesList[index].svgPicture,
                              trailing: IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: AppSize.s20,
                                  color: ColorManager.white,),
                              ),
                            ),
                          ),
                      ),
                    )
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
