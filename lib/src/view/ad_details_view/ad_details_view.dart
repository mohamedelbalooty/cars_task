import 'package:cars_task/utils/helper/size_configuration_helper.dart';
import 'package:cars_task/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/theme/custom_icons.dart';
import '../app_components/app_components.dart';
import '../shared_components.dart';
import 'components.dart';

class AdDetailsView extends StatelessWidget {
  const AdDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BuildAdDetailsAppBarWidget(),
            verticalSpace1(),
            Padding(
              padding: symmetricHorizontalPadding3(),
              child: Row(
                textBaseline: TextBaseline.alphabetic,
                children: [
                  TextUtil(
                    text: 'يكون بحالة جيدة',
                    color: mainClr,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  const Spacer(),
                  TextUtil(
                    text: '2000',
                    color: blackClr,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  TextUtil(
                    text: ' د.ك',
                    color: mainClr,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            verticalSpace1(),
            Container(
              height: 35.h,
              width: SizeConfigurationHelper.screenWidth,
              margin: symmetricHorizontalPadding1(),
              padding: symmetricHorizontalPadding2(),
              decoration: const BoxDecoration(
                color: Color(0xffB75350),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(CustomIcons.car_page___makfula,
                      color: whiteClr, size: 20.sp),
                  horizontalSpace4(),
                  TextUtil(
                    text: 'مكفولة حتى 7000 كم',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            verticalSpace2(),
            const BuildAdDetailsOptionsWidget(),
            verticalSpace2(),
            Padding(
              padding: symmetricHorizontalPadding1(),
              child: TextUtil(
                text:
                    'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء.',
                fontSize: 16.sp,
                color: blackClr,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.justify,
              ),
            ),
            verticalSpace2(),
            Container(
              height: 40.h,
              width: SizeConfigurationHelper.screenWidth,
              margin: symmetricHorizontalPadding1(),
              padding: symmetricHorizontalPadding2(),
              decoration: const BoxDecoration(
                color: Color(0xffECF2F3),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 35.h,
                    width: 35.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: whiteClr, width: 3),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Image 1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  TextUtil(
                    text: 'يوكن للسيارات المعتمدة',
                    fontSize: 14.sp,
                    color: mainClr,
                    fontWeight: FontWeight.w600,
                  ),
                  TextUtil(
                    text: 'كل السيارات',
                    fontSize: 14.sp,
                    color: mainClr,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            verticalSpace2(),
            const BuildAdsWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const BuildAdDetailsContactsWidget(),
    );
  }
}
