import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizappcategory/Constants/ColorConstant.dart';
import 'package:quizappcategory/view/HomePage/ChemistryPage/ChemistryContainer.dart';
import 'package:quizappcategory/view/HomePage/HistoryPage/HistoryContainer.dart';
import 'package:quizappcategory/view/HomePage/MathPage/MathContainer.dart';
import 'package:quizappcategory/view/HomePage/SportsPage/SportsContainer.dart';

class HomePageCategory extends StatefulWidget {
  const HomePageCategory({super.key});

  @override
  State<HomePageCategory> createState() => _HomePageCategoryState();
}

class _HomePageCategoryState extends State<HomePageCategory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //extendBodyBehindAppBar: true,
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " Hi, Aishu",
                  style: TextStyle(
                      color: ColorConstant.PrimaryWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " Lets make this day more productive",
                  style: TextStyle(
                      color: ColorConstant.PrimaryWhite,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.grey[900],
          actions: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://imgs.search.brave.com/RxRnBbhwLeIfLzy9wXqsX_ELLj8cjY7L5ATfQAdn5Bs/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTM5/NTQ3NDc3MS9waG90/by9wb3J0cmFpdC1v/Zi1taWRkbGUtYWdl/ZC13b21hbi1zaXR0/aW5nLWF0LWRpbm5p/bmctd2l0aC1sYXB0/b3Atd29ya2luZy1h/dC1ob21lLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1YSXpT/cnFSejRqUmFTNVFs/SHN0b20wdHZLX0ww/N3JlQ0I4U3A5QXFj/UDBZPQ"),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstant.Grey.withOpacity(.1)),
                  child: Center(
                    child: Text(
                      "Choose a category",
                      style: TextStyle(color: ColorConstant.PrimaryWhite),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Lets play",
                    style: TextStyle(
                        color: ColorConstant.PrimaryWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 300,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorConstant.Grey.withOpacity(.1)),
                            child: SportsContiner(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 300,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorConstant.Grey.withOpacity(.1)),
                              child: ChemistryContainer()),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 300,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorConstant.Grey.withOpacity(.1)),
                              child: MathContainer()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              height: 300,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorConstant.Grey.withOpacity(.1)),
                              child: HistoryContainer()),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
