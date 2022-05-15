import 'package:cars_task/src/view/app_components/app_components.dart';
import 'package:cars_task/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/helper/size_configuration_helper.dart';
import '../shared_components.dart';
import 'components.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfigurationHelper.initSizeConfiguration(context);
    return Scaffold(
      backgroundColor: whiteClr,
      appBar: buildHomeAppBar(context, () {}),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace2(),
            BuildHomeCategoriesWidget(onClick: () {}),
            verticalSpace2(),
            Image.asset(
              'assets/images/Image 6.png',
              height: 150.h,
              width: SizeConfigurationHelper.screenWidth,
              fit: BoxFit.cover,
            ),
            verticalSpace3(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: BuildTextFiledUtil(
                  controller: _searchController,
                  height: 12.0,
                  hint: 'ابحث عن سيارتك'),
            ),
            verticalSpace3(),
            BuildHomeSubCategoriesWidget(onClick: () {}),
            verticalSpace3(),
            const BuildAdsWidget(),
            verticalSpace2(),
            Image.asset(
              'assets/images/Image 5.png',
              height: 150.h,
              width: SizeConfigurationHelper.screenWidth,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
