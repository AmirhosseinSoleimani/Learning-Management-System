import '../../base/base_viewModel.dart';
import 'package:flutter/material.dart';

import '../../resources/values_manager.dart';

class AllCategoriesViewModel extends BaseViewModel with AllCategoriesInputs,AllCategoriesOutputs {

  ScrollController? scrollController;
  bool lastStatus = true;

  bool get isShrink{
    return scrollController != null && scrollController!.hasClients && scrollController!.offset > (AppSize.s50);
  }

  @override
  void scrollListener(){
    if(isShrink != lastStatus){
        lastStatus = isShrink;
    }
  }

  // inputs
  @override
  void dispose() {
    scrollController?.removeListener(scrollListener);
    scrollController?.dispose();
  }

  @override
  void start(BuildContext context) {
    scrollController = ScrollController()..addListener(scrollListener);
  }

}
abstract class AllCategoriesInputs{
  void scrollListener();
}

abstract class AllCategoriesOutputs{

}