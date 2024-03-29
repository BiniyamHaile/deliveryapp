import 'package:deliveryapp/presentation/styles/colors/colors.dart';
import 'package:deliveryapp/presentation/styles/text.dart';
import 'package:flutter/material.dart';


class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage(
                "assets/banner_background.png",
              ),
              fit: BoxFit.cover)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Image.asset(
              "assets/banner_image.png",
            ),
          ),
          const Spacer(),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "አዳዲስ እቃዎች",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "እስከ 40% ቅናሽ",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
