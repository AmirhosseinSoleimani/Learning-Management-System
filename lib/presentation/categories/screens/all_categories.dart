import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
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
    return scrollController != null && scrollController!.hasClients && scrollController!.offset > (100);
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
    print('cat');
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
              toolbarHeight: 60,
              expandedHeight: AppSize.s120,
              title: isShrink ? Text(
                'Categories',style: Theme.of(context).textTheme.headline5,
              ) : null,
              leading: arrowBackButton(context: context),
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppPadding.p12),
                child: FlexibleSpaceBar(
                  stretchModes: const [StretchMode.zoomBackground],
                  centerTitle: true,
                  background: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p12),
                      child: Text(
                        'Categories',
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
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.red,
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
