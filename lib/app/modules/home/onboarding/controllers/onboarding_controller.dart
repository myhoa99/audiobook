import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../generated/resource.dart';
import '../../../../routes/app_pages.dart';

class OnboardingController extends GetxController {
  
   final onboardings = [
    {
      "index": 0,
      "image": R.ASSETS_PNG_ONBOARDING1_PNG,
      "title": "Kinh doanh Online tiện lợi",
      "content": "Không cần bỏ tiền vốn nhập hàng, cam kết sản phẩm chính hãng đến từ các thương hiệu uy tín."
    },
    {
      "index": 1,
      "image": R.ASSETS_PNG_ONBOARDING2_PNG,
      "title": "Hoa hồng hấp dẫn",
      "content": "Nhận hoa hồng trực tiếp trị giá lên đến 50% giá bán với mỗi sản phẩm được bán."
    },
    {
      "index": 2,
      "image": R.ASSETS_PNG_ONBOARDING3_PNG,
      "title": "Quản lý đơn hàng  ",
      "content": "Dễ dàng thống kê và theo dõi tình trạng giao nhận của đơn hàng Giao vận & thanh toán."
    },
  ];

  final sliderIndex = 0.obs;
  final textVisible = false.obs;
  final textTitle = "".obs;
  final textContent = "".obs;
  final carouselCtrl = CarouselController();
  final textButton = "Tiếp theo".obs;

  var currentPage = 0.obs;
  var controllerPage;

  // final data = GetStorage();
  var value = ''.obs;

  final count = 0.obs;
  @override
  void onInit() {
     controllerPage = PageController().obs;
    // getData();
    super.onInit();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    textTitle.value = onboardings[sliderIndex.value]["title"] as String;
    textContent.value = onboardings[sliderIndex.value]["content"] as String;
    textVisible.value = true;
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }

  
  void setSliderIndex(int inx) async {
    sliderIndex.value = inx;
    textVisible.value = false;
    update();
    await Future.delayed(Duration(milliseconds: 300));
    textTitle.value = onboardings[inx]["title"] as String;
    textContent.value = onboardings[inx]["content"] as String;
    textVisible.value = true;
    textButton.value = "Tiếp theo";
    if (inx == onboardings.length - 1) {
      textButton.value = "Tham gia ngay";
    }
    update();
  }
  void onSkip() {
    Get.offAndToNamed(Routes.LOGIN);
  }

  void onContinue() {
    if (sliderIndex.value < onboardings.length - 1) {
      carouselCtrl.nextPage();
      setSliderIndex(sliderIndex.value + 1);
    } else {
      Get.offAndToNamed(Routes.LOGIN);
    }
  }
}
