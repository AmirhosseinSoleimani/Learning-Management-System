import 'package:flutter/cupertino.dart';

class SearchProvider with ChangeNotifier{

  final FocusNode _searchFocusNode = FocusNode();
  FocusNode get searchFocusNode => _searchFocusNode;


  void requestFocus({required BuildContext context}){
      FocusScope.of(context).requestFocus(searchFocusNode);
      notifyListeners();
  }
}