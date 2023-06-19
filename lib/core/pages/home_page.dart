import 'package:flutter/material.dart';

import '../models/colors_screen_model.dart';
import '../util/random_color_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ColorScreenModel _colorModel = ColorScreenModel();

  @override
  void initState() {
    _colorModel.color = RandomColorUtil.generateRandomColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(
              () => _colorModel.color = RandomColorUtil.generateRandomColor());
        },
        child: SizedBox.expand(
          child: Container(
            color: _colorModel.color,
            child: const Center(
              child: Text("Hello There"),
            ),
          ),
        ),
      ),
    );
  }
}
