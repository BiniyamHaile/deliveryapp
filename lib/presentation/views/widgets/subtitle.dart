
  import 'package:deliveryapp/presentation/styles/colors/colors.dart';
import 'package:flutter/material.dart';

Widget subTitle(String text) {
    return Padding(
      padding:  const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: AppColors.blueShade),
          ),
          const Spacer(),
          const Text(
            "ሁሉንም ይመልከቱ",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
