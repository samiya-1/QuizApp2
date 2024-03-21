import 'package:flutter/material.dart';
import 'package:quizappcategory/Constants/ColorConstant.dart';
import 'package:quizappcategory/controller/MathController.dart';
import 'package:quizappcategory/view/ScoreResult/ScoreResultBoard.dart';

class MathQuizHome extends StatefulWidget {
  const MathQuizHome({super.key});

  @override
  State<MathQuizHome> createState() => _MathQuizHomeState();
}

class _MathQuizHomeState extends State<MathQuizHome> {
  int currentQuestionIndex = 0;
  int? selectedanswerindex;
  int rightAnswerCount = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red.shade200),
                child: Text(
                  MathController
                      .mathQuestionList[currentQuestionIndex].Question,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: ColorConstant.PrimaryWhite),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => InkWell(
                    onTap: () {
                      if (selectedanswerindex == null) {
                        selectedanswerindex = index;
                        if (selectedanswerindex ==
                            MathController
                                .mathQuestionList[currentQuestionIndex]
                                .correctIndex) {
                          rightAnswerCount++;
                        }
                        setState(() {});
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: buildColor(index)),
                            color: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              MathController
                                  .mathQuestionList[currentQuestionIndex]
                                  .optionsList[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: ColorConstant.PrimaryWhite),
                            ),
                            Icon(buildIcons(index), color: buildColor(index)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (currentQuestionIndex <
                      MathController.mathQuestionList.length - 1) {
                    currentQuestionIndex++;
                    selectedanswerindex = null;
                    setState(() {});
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScoreResultBoard(
                            rightAnswerCount: rightAnswerCount,
                          ),
                        ));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red.shade200),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: ColorConstant.PrimaryWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color buildColor(int index) {
    if (index ==
            MathController
                .mathQuestionList[currentQuestionIndex].correctIndex &&
        selectedanswerindex != null) {
      return ColorConstant.Green;
    } else if (index == selectedanswerindex) {
      if (selectedanswerindex ==
          MathController.mathQuestionList[currentQuestionIndex].correctIndex) {
        return ColorConstant.Green;
      } else {
        return Colors.red;
      }
    } else {
      return ColorConstant.Grey;
    }
  }

  IconData? buildIcons(int index) {
    if (index ==
            MathController
                .mathQuestionList[currentQuestionIndex].correctIndex &&
        selectedanswerindex != null) {
      return Icons.done;
    } else if (index == selectedanswerindex) {
      if (selectedanswerindex !=
          MathController.mathQuestionList[currentQuestionIndex].correctIndex) {
        return Icons.close;
      } else {
        return null;
      }
    }
  }
}
