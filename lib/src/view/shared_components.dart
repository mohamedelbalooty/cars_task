import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/helper/size_configuration_helper.dart';
import '../../utils/routes/routes_path.dart';
import '../../utils/theme/colors.dart';
import '../../utils/theme/custom_icons.dart';
import 'app_components/app_components.dart';

class BuildAdsWidget extends StatelessWidget {
  const BuildAdsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            SizeConfigurationHelper.screenOrientation == Orientation.portrait
                ? 2
                : 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        mainAxisExtent: 180.h,
      ),
      itemBuilder: (_, index) => const BuildAdCardWidget(),
    );
  }
}

class BuildAdCardWidget extends StatelessWidget {
  const BuildAdCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(RoutesPath.adDetailsView),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Image 11.png'),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30.h,
              width: double.infinity,
              color: const Color(0xffECF2F3),
              child: Center(
                child: TextUtil(
                  text: 'جي ام سي | يوكن | الفئة الرابعة',
                  color: blackClr,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Row(
              children: const [
                BuildAdSubCardWidget(
                    icon: CustomIcons.home___ad1,
                    iconColor: Colors.indigoAccent,
                    type: 'السعر',
                    value: '200'),
                SizedBox(width: 2),
                BuildAdSubCardWidget(
                    icon: CustomIcons.home___ad2,
                    iconColor: Colors.green,
                    type: 'سنة الصنع',
                    value: '2002'),
                SizedBox(width: 2),
                BuildAdSubCardWidget(
                    icon: CustomIcons.home___ad3,
                    iconColor: Colors.orange,
                    type: 'كم',
                    value: '200'),
                SizedBox(width: 2),
                BuildAdSubCardWidget(
                    icon: CustomIcons.home___ad4,
                    iconColor: Colors.deepPurple,
                    type: 'مكفولة ل',
                    value: '200'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BuildAdSubCardWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String type, value;

  const BuildAdSubCardWidget(
      {Key? key,
      required this.icon,
      required this.iconColor,
      required this.type,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50.h,
        decoration: const BoxDecoration(
          color: Color(0xffF7F7FD),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            topLeft: Radius.circular(5),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 2),
            Icon(icon, size: 12.sp, color: iconColor),
            const SizedBox(height: 2),
            TextUtil(
              text: type,
              color: blackClr,
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
              height: 1,
            ),
            TextUtil(
              text: value,
              color: blackClr,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
              height: 1,
            ),
            const SizedBox(height: 2),
          ],
        ),
      ),
    );
  }
}
