import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import 'package:provider/provider.dart';
import '../../../app/provider/search/search_provider.dart';
import '../../resources/color_manager.dart';
import '../../resources/string_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? scrollController;

  bool lastStatus = true;

  bool get isShrink{
    return scrollController != null && scrollController!.hasClients && scrollController!.offset > (AppSize.s220);
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
    final searchProvider = Provider.of<SearchProvider>(context);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: isShrink ? ColorManager.lightBlack1 : ColorManager.black
      ),
    );
    print('ggg');
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black,
        body: CustomScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: isShrink ? ColorManager.lightBlack1:ColorManager.black,
              title: isShrink ? Text(
                  AppStringHomePage.headerText,
                  style: Theme.of(context).textTheme.headline3) :null,
              centerTitle: true,
              bottom: isShrink ? PreferredSize(
                preferredSize: const Size.fromHeight(AppSize.s0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12,vertical: AppPadding.p12),
                  child: SizedBox(
                    width: double.infinity,
                    height: AppSize.s40,
                    child: TextFormField(
                      onTap: (){
                        // context.read<SearchProvider>().requestFocus(context: context);
                      },
                      // focusNode: searchProvider.searchFocusNode,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: AppSize.s6),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(AppSize.s4),
                        ),
                        focusColor: ColorManager.lightBlue1,
                        filled: true,
                        fillColor: ColorManager.lightGrey,
                        prefixIcon: Icon(CupertinoIcons.search,color: ColorManager.darkWhite1),
                        hintText: AppStringHomePage.hintSearchBarText,
                        hintStyle: Theme.of(context).textTheme.labelMedium,
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                ),
              ) : null,
              expandedHeight: AppSize.s300,
              stretch: true,
              pinned: true,
              toolbarHeight: AppSize.s80,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppPadding.p12),
                child: FlexibleSpaceBar(
                  stretchModes: const [
                    StretchMode.zoomBackground
                  ],
                  centerTitle: true,
                  background: isShrink ? null:Stack(
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
            Consumer<SearchProvider>(
              builder: (context,searchProvider,child){
                return SliverAppBar(
                  pinned: false,
                  expandedHeight: isShrink ? AppSize.s0 : AppSize.s120,
                  toolbarHeight: isShrink ? AppSize.s0 : AppSize.s120,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(AppPadding.p12),
                    child: FlexibleSpaceBar(
                      centerTitle: true,
                      background: Container(
                        width: double.infinity,
                        height: AppSize.s120,
                        color: ColorManager.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStringHomePage.headerText,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const SizedBox(
                              height: AppSize.s16,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: AppSize.s40,
                              child: TextFormField(
                                onTap: (){
                                  context.read<SearchProvider>().requestFocus(context: context);
                                },
                                focusNode: searchProvider.searchFocusNode,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: AppSize.s6),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(AppSize.s4),
                                  ),
                                  focusColor: ColorManager.darkGrey,
                                  filled: true,
                                  fillColor: ColorManager.lightGrey,
                                  prefixIcon: Icon(CupertinoIcons.search,color: ColorManager.darkWhite1),
                                  hintText: AppStringHomePage.hintSearchBarText,
                                  hintStyle: Theme.of(context).textTheme.labelMedium,
                                ),
                                keyboardType: TextInputType.name,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
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
    );
  }
}
