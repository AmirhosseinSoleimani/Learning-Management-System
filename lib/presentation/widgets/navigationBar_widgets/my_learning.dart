import 'package:flutter/material.dart';
import '../../resources/color_manager.dart';

class MyLearning extends StatefulWidget {
  const MyLearning({Key? key}) : super(key: key);

  @override
  State<MyLearning> createState() => _MyLearningState();
}

class _MyLearningState extends State<MyLearning> {
  Stream<int> generateNumber() async*{
    while(true){
      await Future.delayed(const Duration(seconds: 1));
      yield DateTime.now().second;
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black,
        body: Column(
          children: [
            StreamBuilder(
              stream: generateNumber(),
              builder: (context, snapshot) {
                return Text(
                    snapshot.data.toString(),
                    style: const TextStyle(color: Colors.white),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}