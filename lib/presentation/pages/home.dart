import 'package:deliveryapp/config/constants.dart';
import 'package:deliveryapp/presentation/styles/colors/colors.dart';
import 'package:deliveryapp/presentation/styles/font/text_styles.dart';
import 'package:deliveryapp/presentation/styles/text.dart';
import 'package:deliveryapp/presentation/views/widgets/homeBanner.dart';
import 'package:deliveryapp/presentation/views/widgets/horizontal_item_slider.dart';
import 'package:deliveryapp/presentation/views/widgets/subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    TextEditingController searchController = TextEditingController();
    static final formKey = GlobalKey<FormState>();
      Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion(
        value:  SystemUiOverlayStyle(
          statusBarColor: Colors.grey.shade400,
          statusBarIconBrightness: Brightness.light,
        
        ),
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.grey.shade200 , 
            elevation: 0,
            title:              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icon.jpg' , 
                  height: 50.h,
                  width: 70.w,
                  fit: BoxFit.fill,
                  
                  ),
                   Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
        
                  const Icon(Icons.location_on, color: AppColors.primaryColor, size: 20),
                  Text('አዲስ አበባ ፣ ኢትዮጵያ' , style: setTextStyle(fontSize: 18.sp, color: AppColors.blueShade),) , 
                 ],
              ) ,
                ],
              ),
               
             
          ),
          body: Padding(
           padding: EdgeInsets.fromLTRB(10.w, 10, 10.w, 5),
            child: Column(
              children: [
                  Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                            //  color: Colors.grey.shade400, 
                            color: Colors.grey.shade300,
                              // borderRadius: BorderRadius.circular(20.w),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.w),
                                topRight: Radius.circular(20.w),
                                bottomLeft: Radius.circular(20.w),
                                bottomRight: Radius.circular(20.w),),
                              
                              border: Border.all(color: Colors.grey, width: 2)),
                    child: Padding(
                       padding: EdgeInsets.symmetric(vertical: 5.h),
                      child:
                            
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                const Icon(
                                  Icons.search,
                                  color:  AppColors.primaryColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                SizedBox(
                                  width: 204.w,
                                  height: 20.h,
                                  // padding: EdgeInsets.only(top: 5.h),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Form(
                                       key: formKey,
                                           child: TextField(
                                      controller: searchController,
                                      // focusNode: _nameTextFieldFocusNode,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      decoration:  const InputDecoration(
                                        hintText: "ይፈልጉ",
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 0),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        // filled: true,
                                        // fillColor: Colors.green
                                      ),
                                    ),
                                    ),
                               
                                  ),
                                ),
                                const Expanded(
                                    child: SizedBox(
                                  height: 2,
                                )),
                                GestureDetector(
                                  onTap: () {
                                  
                                  },
                                  child:const SizedBox.shrink(),
                                ),
                              ],
                            ),
                    ),
                  ),
              
             
             

                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                             const HomeBanner()  , 
                          subTitle('አዳዲስ እቃዎች') ,
                    getHorizontalItemSlider([demoItems[1] , demoItems[0]]),
                    
                    subTitle('በብዛት የተሸጡ') ,
                    getHorizontalItemSlider([demoItems[3] , demoItems[2]]),
                      ],
                    ),
                  ),
                ) ,
                  
               Container(
                height: 20.h,
                decoration: BoxDecoration(
                  // color: AppColors.blueShade , 
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppText(text: 'Developer : ' , fontSize: 14, fontWeight: FontWeight.w300,) ,
                    const AppText(text: 'Biniyam Haile' , fontSize: 14, fontWeight: FontWeight.w300, color: AppColors.primaryColor,), 

                 GestureDetector(
                  onTap: () => _makePhoneCall('0918752015'),
                  child:    const AppText(text: '0918752015' , fontSize: 14, fontWeight: FontWeight.w300, color: Colors.blue,) ,
                 )

                  ],
                ),
               )
               
              ],
            ),
          ),
        
        ),
      ),
    );
  }


}