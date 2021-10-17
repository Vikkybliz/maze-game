import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: First(),
    );
  }
}


class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Maze(
          player: MazeItem(
              'https://image.flaticon.com/icons/png/512/808/808433.png',
              ImageType.network),
          columns: 10,
          rows: 12,
          wallThickness: 5.0,
          wallColor: Colors.lime,
          finish: MazeItem(
              'https://image.flaticon.com/icons/png/512/1506/1506339.png',
              ImageType.network),
          onFinish: () => Get.off(() => Second())),
    );
  }
}


class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Maze(
          player: MazeItem(
              'https://image.flaticon.com/icons/png/512/808/808433.png',
              ImageType.network),
          columns: 10,
          rows: 12,
          wallThickness: 5.0,
          wallColor: Colors.lime,
          finish: MazeItem(
              'https://image.flaticon.com/icons/png/512/1506/1506339.png',
              ImageType.network),
          onFinish: () => Get.off(() => First())),
    );
  }
}


