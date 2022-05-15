import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../utils/theme/colors.dart';

///SPACES
SizedBox verticalSpace1() => SizedBox(height: 5.h);

SizedBox verticalSpace2() => SizedBox(height: 10.h);

SizedBox verticalSpace3() => SizedBox(height: 15.h);

SizedBox verticalSpace4() => SizedBox(height: 20.h);

SizedBox verticalSpace5() => SizedBox(height: 30.h);

SizedBox horizontalSpace1() => SizedBox(width: 5.w);

SizedBox horizontalSpace2() => SizedBox(width: 10.w);

SizedBox horizontalSpace3() => SizedBox(width: 15.w);

SizedBox horizontalSpace4() => SizedBox(width: 20.w);

SizedBox horizontalSpace5() => SizedBox(width: 30.w);

///PADDINGS
EdgeInsets padding1() => const EdgeInsets.all(5);

EdgeInsets padding2() => const EdgeInsets.all(10);

EdgeInsets padding3() => const EdgeInsets.all(20);

EdgeInsets symmetricVerticalPadding1() =>
    const EdgeInsets.symmetric(vertical: 10);

EdgeInsets symmetricVerticalPadding2() =>
    const EdgeInsets.symmetric(vertical: 15);

EdgeInsets symmetricHorizontalPadding1() =>
    const EdgeInsets.symmetric(horizontal: 10);

EdgeInsets symmetricHorizontalPadding2() =>
    const EdgeInsets.symmetric(horizontal: 15);

EdgeInsets symmetricHorizontalPadding3() =>
    const EdgeInsets.symmetric(horizontal: 20);

///BUTTONS
class IconButtonUtil extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double iconSize;
  final VoidCallback onClick;
  final EdgeInsetsGeometry padding;
  final BoxConstraints? constraints;

  const IconButtonUtil(
      {Key? key,
      required this.icon,
      required this.color,
      required this.iconSize,
      required this.onClick,
      this.padding = const EdgeInsets.all(8.0),
      this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: color,
      iconSize: iconSize,
      onPressed: onClick,
      padding: padding,
      constraints: constraints,
    );
  }
}

class CircleIconButtonUtil extends StatelessWidget {
  final double side;
  final Color color;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final VoidCallback onClick;

  const CircleIconButtonUtil(
      {Key? key,
      required this.side,
      required this.color,
      required this.icon,
      this.iconColor = blackClr,
      required this.iconSize,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: side,
        width: side,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}

class ElevatedButtonUtil extends StatelessWidget {
  final Widget child;
  final VoidCallback onClick;
  final Color color, borderColor;
  final Size size;
  final double radius;

  const ElevatedButtonUtil(
      {Key? key,
      required this.child,
      required this.onClick,
      this.color = whiteClr,
      this.borderColor = whiteClr,
      this.size = const Size(150.0, 50.0),
      this.radius = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onClick,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(size),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(color: borderColor, width: 2),
          ),
        ),
      ),
    );
  }
}

class TextButtonUtil extends StatelessWidget {
  final String text;
  final double fontSize;
  final double? height;
  final Color color;
  final FontWeight fontWeight;
  final String? fontFamily;
  final TextDecoration? decoration;
  final EdgeInsets? padding;
  final Function() onClick;

  const TextButtonUtil(
      {Key? key,
      required this.text,
      required this.onClick,
      this.color = whiteClr,
      this.fontSize = 16.0,
      this.fontWeight = FontWeight.normal,
      this.fontFamily,
      this.decoration,
      this.height,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: TextUtil(
        text: text,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        decoration: decoration,
        height: height,
      ),
      style: ButtonStyle(padding: MaterialStateProperty.all(padding)),
      onPressed: onClick,
    );
  }
}

///CUSTOM COMPONENTS
class TextUtil extends StatelessWidget {
  final String text;
  final double fontSize;
  final double? height;
  final Color color;
  final FontWeight fontWeight;
  final String? fontFamily;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;

  const TextUtil({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontWeight = FontWeight.normal,
    this.color = whiteClr,
    this.height,
    this.fontFamily,
    this.decoration,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        height: height,
        decoration: decoration,
      ),
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}

class CustomIcon extends StatelessWidget {
  final String path;
  final Color color;

  const CustomIcon({Key? key, required this.path, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(path, color: color, semanticsLabel: 'Custom Icon');
  }
}

class BuildTextFiledUtil extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final double height;

  const BuildTextFiledUtil(
      {Key? key,
      required this.controller,
      required this.hint,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      cursorColor: mainClr,
      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: height, horizontal: 10.0),
        hintText: hint,
        hintStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        suffixIcon: Icon(
          Icons.search_rounded,
          size: 28.sp,
          color: mainClr,
        ),
        enabledBorder: _border,
        focusedBorder: _border,
        errorBorder: _border,
        focusedErrorBorder: _border,
      ),
    );
  }

  final OutlineInputBorder _border = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(
      color: greyClr,
      width: 1.5,
    ),
  );
}

///SHOW METHODS
void showBottomSheetUtil({required Widget bottomSheetWidget}) {
  Get.bottomSheet(
    bottomSheetWidget,
  );
}

SnackbarController showSnackBar(
    {required String title, required String message}) {
  return Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    borderRadius: 5.0,
    padding: padding2(),
    margin: const EdgeInsets.all(10.0),
    duration: const Duration(seconds: 3),
    colorText: Get.isDarkMode ? whiteClr : blackClr,
  );
}
