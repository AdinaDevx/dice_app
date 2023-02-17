import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_diceapp/app/constans/app_colors.dart';
import 'package:flutter_diceapp/app/constans/text_styles/app_text_styles.dart';
import 'package:flutter_diceapp/app/constans/texts/app_text.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int sol = 2;
  int on = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.yellow,
        title: const Center(
          child: Text(
            AppTexts.diceApp,
            style: AppTextStyles.black30,
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    sol = math.Random().nextInt(6) + 1;
                    on = math.Random().nextInt(6) + 1;
                    /*
                    0 + 1 = 1
                    1 + 1 = 2
                    2 + 1 = 3
                    3 + 1 = 4
                    4 + 1 = 5
                    5 + 1 = 6
                    */

                    setState(() {});
                  },
                  child: Image(
                    image: AssetImage('images/dice$sol.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    on = math.Random().nextInt(6) + 1;
                    sol = math.Random().nextInt(6) + 1;

                    setState(() {});
                  },
                  child: Image(
                    image: AssetImage('images/dice$on.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
