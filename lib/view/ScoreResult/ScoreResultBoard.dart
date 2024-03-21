import 'package:flutter/material.dart';
import 'package:quizappcategory/Constants/ColorConstant.dart';
import 'package:quizappcategory/view/HomePage/HomePageCategory.dart';

class ScoreResultBoard extends StatelessWidget {
  const ScoreResultBoard(
      {super.key,
      required int rightAnswerCount,
      required int skippedAnswerCount,
      required int wrongAnswerCount});
  final int rightAnswerCount = 0;
  final int skippedAnswerCount = 0;
  final int wrongAnswerCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Congrats!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.PrimaryWhite,
                  fontSize: 25),
            ),
            Text(
              "Score",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.Green,
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Correct Answers : $rightAnswerCount",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.PrimaryWhite),
            ),
            Text(
              "Wrong Answers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.PrimaryWhite),
            ),
            Text(
              "Skipped Answers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.PrimaryWhite),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePageCategory()));
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: ColorConstant.orangeAccent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: ColorConstant.PrimaryWhite, width: 4)),
                child: Center(
                  child: Text(
                    "Restart",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.PrimaryWhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
