import 'package:flutter/material.dart';
import 'package:quizappcategory/Constants/ColorConstant.dart';
import 'package:quizappcategory/view/HomePage/SportsPage/SportsQuizHome.dart';

class SportsContiner extends StatelessWidget {
  const SportsContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Material(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SportsQuizHome()));
            },
            child: Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://imgs.search.brave.com/7JonqtPbf9TmFLm2Vi0yf1WGMBE0cmUzGHDFnayLwr4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTgz/MjQ0NzQxL3Bob3Rv/L2xvbmUtYmFza2V0/YmFsbC1vbi10aGUt/YmFza2V0YmFsbC1j/b3VydC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9VlBKUDRs/a0VrU1h4cW1qa1pO/Ml9PVXQ0YXhkMWVQ/Yk5uS1lBNk9UU1dr/ND0")),
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstant.PrimaryBlack),
            ),
          ),
        ),
        Text(
          "Sports",
          style: TextStyle(
              color: ColorConstant.PrimaryWhite, fontWeight: FontWeight.bold),
        ),
        Text(
          "5 Questions",
          style: TextStyle(
            color: ColorConstant.Grey.withOpacity(.4),
          ),
        ),
      ],
    );
  }
}
