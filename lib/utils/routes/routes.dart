import 'package:cars_task/src/view/ad_details_view/ad_details_view.dart';
import 'package:get/get.dart';
import '../../src/view/home_view/home_view.dart';
import 'routes_path.dart';

class Routes{
  static const String initialRoute = RoutesPath.homeView;
  static List<GetPage> routes = [
    GetPage(
      name: RoutesPath.homeView,
      page: () => HomeView(),
    ),
    GetPage(
      name: RoutesPath.adDetailsView,
      page: () => const AdDetailsView(),
    ),
  ];
}