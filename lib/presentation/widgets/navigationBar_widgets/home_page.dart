import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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


  @override
  Widget build(BuildContext context) {
    print('ggg');
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
              Consumer<SearchProvider>(
                builder: (context,searchProvider,child){
                  return SliverAppBar(
                    pinned: true,
                    expandedHeight: 150,
                    toolbarHeight: 150,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(AppPadding.p12),
                      child: SingleChildScrollView(
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
                                    focusColor: ColorManager.lightBlue1,
                                    filled: true,
                                    fillColor: ColorManager.lightGrey,
                                    prefixIcon: searchProvider.searchFocusNode.hasFocus ? Icon(CupertinoIcons.search,color: ColorManager.lightBlue1): Icon(CupertinoIcons.search,color: Colors.red),
                                    hintText: 'What do you want to learn?',
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
      ),
    );
  }
}
