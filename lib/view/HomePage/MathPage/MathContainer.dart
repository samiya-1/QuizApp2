import 'package:flutter/material.dart';
import 'package:quizappcategory/Constants/ColorConstant.dart';
import 'package:quizappcategory/view/HomePage/MathPage/MathQuizHome.dart';

class MathContainer extends StatelessWidget {
  const MathContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: (){ Navigator.push(context,
                MaterialPageRoute(builder: (context) => MathQuizHome()));},
          child: Container(
            height: 200,
            width: 170,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://imgs.search.brave.com/er6PrVwp7WcP_oF79u_7aCGye4BLHXkN7VkSlf_rn84/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS12ZWN0b3Iv/Y291bnRpbmctbnVt/YmVyLTAtOS1tYXRo/LXN5bWJvbHNfMTMw/OC0xMDQxMzkuanBn/P3NpemU9NjI2JmV4/dD1qcGc")),
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.Grey.withOpacity(.1)),
          ),
        ),
        Text(
          "Math",
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
