import 'package:cars_task/utils/routes/routes_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/helper/size_configuration_helper.dart';
import '../../../utils/theme/colors.dart';
import '../../../utils/theme/custom_icons.dart';
import '../app_components/app_components.dart';

AppBar buildHomeAppBar(BuildContext context, onClick) => AppBar(
  elevation: 0,
  flexibleSpace: Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [mainClr, greyClr],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
  ),
  leading: InkWell(
    onTap: () {},
    child: Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          CustomIcons.home___notification_,
          color: whiteClr,
          size: 28.sp,
        ),
        Positioned(
          top: 6.h,
          right: 12.w,
          child: Container(
            height: 18.w,
            width: 18.w,
            decoration: BoxDecoration(
              color: redClr,
              shape: BoxShape.circle,
              border: Border.all(color: whiteClr, width: 1.5),
            ),
            child: Center(
              child: TextUtil(
                text: '2',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
  actions: [
    Builder(
      builder: (context) {
        return IconButtonUtil(
          icon: Icons.menu_rounded,
          color: whiteClr,
          iconSize: 28.sp,
          onClick: onClick,
        );
      }
    ),
  ],
);

class BuildHomeCategoriesWidget extends StatelessWidget {
  final VoidCallback onClick;
  const BuildHomeCategoriesWidget({Key? key, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      width: SizeConfigurationHelper.screenWidth,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsetsDirectional.only(start: 10.0),
        itemCount: 6,
        itemBuilder: (_, index) => GestureDetector(
          onTap: onClick,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80.h,
                width: 80.h,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: transparent,
                  border: Border.all(color: redClr, width: 2),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/Image 1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              TextUtil(
                text: 'تيوتا',
                color: blackClr,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        separatorBuilder: (_, index) => horizontalSpace3(),
      ),
    );
  }
}

class BuildHomeSubCategoriesWidget extends StatelessWidget {
  final VoidCallback onClick;
  const BuildHomeSubCategoriesWidget({Key? key, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: SizeConfigurationHelper.screenWidth,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        itemCount: 3,
        itemBuilder: (_, index) => GestureDetector(
          onTap: onClick,
          child: Container(
            height: 35.h,
            width: 105.w,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: mainClr,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Center(
              child: TextUtil(
                text: 'أوروبي',
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                maxLines: 1,
                textOverflow: TextOverflow.fade,
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => horizontalSpace3(),
      ),
    );
  }
}

