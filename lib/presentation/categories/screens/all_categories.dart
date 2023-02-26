import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: arrowBackButton(context: context),
      ),
    );
  }
}
