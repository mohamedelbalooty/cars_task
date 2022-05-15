import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/helper/size_configuration_helper.dart';
import '../../../utils/theme/colors.dart';
import '../../../utils/theme/custom_icons.dart';
import '../app_components/app_components.dart';

class BuildAdDetailsAppBarWidget extends StatelessWidget {
  const BuildAdDetailsAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).viewPadding.top +
          kBottomNavigationBarHeight +
          SizeConfigurationHelper.screenHeight * 0.35),
      width: SizeConfigurationHelper.screenWidth,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: (SizeConfigurationHelper.screenHeight * 0.38),
            width: SizeConfigurationHelper.screenWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/Image 6.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  top: MediaQuery.of(context).viewPadding.top + 5.h,
                  start: 20.0,
                  end: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleIconButtonUtil(
                    side: 28.h,
                    icon: CustomIcons.car_page___fav,
                    iconSize: 15.sp,
                    color: Colors.white70,
                    onClick: () {},
                  ),
                  horizontalSpace2(),
                  CircleIconButtonUtil(
                    side: 28.h,
                    icon: CustomIcons.car_page___share,
                    iconSize: 15.sp,
                    color: Colors.white70,
                    onClick: () {},
                  ),
                  const Spacer(),
                  CircleIconButtonUtil(
                    side: 28.h,
                    icon: CustomIcons.back,
                    iconSize: 15.sp,
                    color: Colors.white70,
                    onClick: () => Get.back(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BuildAdSubCardWidget(
                    icon: CustomIcons.car_page___slindr,
                    iconColor: Colors.indigoAccent,
                    type: 'المحرك سلندر',
                    value: '6'),
                horizontalSpace2(),
                const BuildAdSubCardWidget(
                    icon: CustomIcons.car_page___makfula,
                    iconColor: Colors.green,
                    type: 'سنة الصنع',
                    value: '2000'),
                horizontalSpace2(),
                const BuildAdSubCardWidget(
                    icon: CustomIcons.car_page___book,
                    iconColor: Colors.orange,
                    type: 'الممشى',
                    value: '1400'),
              ],
            ),
          ),
        ],
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
    return Container(
      height: 75.h,
      width: 75.h,
      decoration: const BoxDecoration(
        color: Color(0xffECF2F3),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 2),
          Icon(icon, size: 20.sp, color: iconColor),
          const SizedBox(height: 2),
          TextUtil(
            text: type,
            color: greyClr,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
            textOverflow: TextOverflow.ellipsis,
            height: 1,
          ),
          TextUtil(
            text: value,
            color: blackClr,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            textOverflow: TextOverflow.ellipsis,
            height: 1,
          ),
          const SizedBox(height: 2),
        ],
      ),
    );
  }
}

class BuildAdDetailsOptionsWidget extends StatelessWidget {
  const BuildAdDetailsOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: symmetricHorizontalPadding2(),
      itemCount: 5,
      itemBuilder: (_, index) => const BuildAdOptionWidget(
          icon: Icons.accessible_forward, type: 'اللون الخارجي', value: 'ابيض'),
      separatorBuilder: (_, index) => verticalSpace1(),
    );
  }
}

class BuildAdOptionWidget extends StatelessWidget {
  final IconData icon;
  final String type, value;

  const BuildAdOptionWidget(
      {Key? key, required this.icon, required this.type, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: SizeConfigurationHelper.screenWidth,
      color: const Color(0xffECF2F3),
      padding: symmetricHorizontalPadding2(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: blackClr,
            size: 20.sp,
          ),
          horizontalSpace2(),
          TextUtil(
            text: type,
            fontSize: 16.sp,
            color: blackClr,
            fontWeight: FontWeight.bold,
          ),
          Expanded(
            child: TextUtil(
              text: value,
              fontSize: 16.sp,
              color: mainClr,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class BuildAdDetailsContactsWidget extends StatelessWidget {
  const BuildAdDetailsContactsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight,
      width: SizeConfigurationHelper.screenWidth,
      padding: symmetricHorizontalPadding2(),
      color: whiteClr,
      child: Row(
        children: [
          CircleIconButtonUtil(
            side: 34.h,
            color: const Color(0xffE8F4E9),
            icon: CustomIcons.car_page___call,
            iconColor: Colors.green,
            iconSize: 20.sp,
            onClick: () {},
          ),
          horizontalSpace2(),
          CircleIconButtonUtil(
            side: 34.h,
            color: const Color(0xffEFEEFF),
            icon: CustomIcons.menu___contact,
            iconColor: Colors.indigoAccent,
            iconSize: 20.sp,
            onClick: () {},
          ),
          const Spacer(),
          ElevatedButtonUtil(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.location_on_outlined,
                    color: whiteClr, size: 15.sp),
                TextUtil(
                  text: 'موقع السيارة',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            color: mainClr,
            borderColor: mainClr,
            size: Size(65.w, 34.h),
            radius: 30,
            onClick: (){},
          ),
          const Spacer(),
          ElevatedButtonUtil(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(CustomIcons.car_page___book,
                    color: mainClr, size: 15.sp),
                TextUtil(
                  text: 'احجز السيارة',
                  color: mainClr,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            borderColor: mainClr,
            size: Size(65.w, 34.h),
            radius: 30,
            onClick: (){},
          ),
        ],
      ),
    );
  }
}
