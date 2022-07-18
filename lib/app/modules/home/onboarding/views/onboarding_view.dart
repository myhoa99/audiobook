import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../generated/resource.dart';
import '../../../../theme/app_style.dart';
import '../../../../theme/color.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  
  get colorPrimaryOrange100 => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        physics: new ClampingScrollPhysics(),
        child: Container(
          color: colorWhite,
          
          child: Column(children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(R.ASSETS_PNG_BACKGROUND_PNG),
               CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: false,
                      reverse: false,
                      viewportFraction: 1,
                      aspectRatio: 1,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        controller.setSliderIndex(index);
                      },
                    ),
                    carouselController: controller.carouselCtrl,
                    items: controller.onboardings.map(
                      (element) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Image.asset(
                                element["image"] as String,
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                //   AnimatedOpacity(
                //   opacity: controller.textVisible.value ? 1.0 : 0.0,
                //   duration: Duration(milliseconds: 200),
                //   child: Container(
                //     padding: EdgeInsets.symmetric(horizontal: 8),
                //     child: Column(
                //       children: [
                //         SizedBox(height: 32),
                //         Text(
                //           controller.textTitle.value,
                //           style: typoSuperLargeTextBold.copyWith(
                //               color: colorPrimaryOrange100),
                //         ),
                //         SizedBox(height: 16),
                //         Text(
                //           controller.textContent.value,
                //           style: typoNormalBETextRegularNoSpacing.copyWith(
                //               color: colorBlack),
                //           textAlign: TextAlign.center,
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              
              // SizedBox(height: 24),
              // Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: controller.onboardings.map(
              //       (element) {
              //         if (element["index"] == controller.sliderIndex.value) {
              //           return Container(
              //             width: 12.0,
              //             height: 12.0,
              //             margin: const EdgeInsets.symmetric(
              //                 vertical: 16.0, horizontal: 4.0),
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.all(Radius.circular(6)),
              //               border: Border.all(
              //                   color: colorAccent50, width: 2),
              //               color: colorPrimaryOrange100,
              //             ),
              //           );
              //         }
              //         return Container(
              //           width: 10.0,
              //           height: 10.0,
              //           margin:  const EdgeInsets.symmetric(
              //               vertical: 16.0, horizontal: 4.0),
              //           decoration:const BoxDecoration(
              //             borderRadius: BorderRadius.all(Radius.circular(4)),
              //             color: colorAccent50,
              //           ),
              //         );
              //       },
              //     ).toList(),
              //   ),
            
                

              ],
            )
          ],),
          ),
          
           ),
      
    );
  }
}
