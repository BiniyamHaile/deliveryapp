import 'package:deliveryapp/models/home/grocery_item.dart';
import 'package:deliveryapp/presentation/styles/colors/colors.dart';
import 'package:deliveryapp/presentation/styles/font/text_styles.dart';
import 'package:deliveryapp/presentation/views/widgets/addWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget ProductWgt(
  {required GroceryItem item , required   String? heroSuffix}
){
    return Container(
      width: 150.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.blueShade ,
          width: 1
        ) , 
        borderRadius: BorderRadius.circular(10)
      ),

      child:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Hero(
                  tag: "GroceryItem:${item.name}-${heroSuffix ?? ""}",
                  child: Image.asset(item.imagePath),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
             item.name,
            style: setTextStyle(fontSize: 16, color: Colors.black),
            ),
          Text(
              item.description,
              style: setTextStyleWithFontWeight(fontSize: 14, color:  const Color(0xFF7C7C7C), fontWeight:  FontWeight.w600,),
             
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
              Text(
                   "${item.price.toStringAsFixed(2)} ብር",
                  style: setTextStyle(fontSize: 18, color: Colors.black),
                ),
                const Spacer(),
                addWidget()
              ],
            )
          ],
        ),
      ),
   
    );
}