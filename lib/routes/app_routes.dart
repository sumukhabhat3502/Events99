import 'package:eventss/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:eventss/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:eventss/presentation/splash_screen/splash_screen.dart';
import 'package:eventss/presentation/splash_screen/binding/splash_binding.dart';
import 'package:eventss/presentation/otp_screen/otp_screen.dart';
import 'package:eventss/presentation/otp_screen/binding/otp_binding.dart';
import 'package:eventss/presentation/home_container_screen/home_container_screen.dart';
import 'package:eventss/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:eventss/presentation/select_city_screen/select_city_screen.dart';
import 'package:eventss/presentation/select_city_screen/binding/select_city_binding.dart';
import 'package:eventss/presentation/search_screen/search_screen.dart';
import 'package:eventss/presentation/search_screen/binding/search_binding.dart';
import 'package:eventss/presentation/search_result_screen/search_result_screen.dart';
import 'package:eventss/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:eventss/presentation/events_screen/events_screen.dart';
import 'package:eventss/presentation/events_screen/binding/events_binding.dart';
import 'package:eventss/presentation/filter_screen/filter_screen.dart';
import 'package:eventss/presentation/filter_screen/binding/filter_binding.dart';
import 'package:eventss/presentation/filter_selected_screen/filter_selected_screen.dart';
import 'package:eventss/presentation/filter_selected_screen/binding/filter_selected_binding.dart';
import 'package:eventss/presentation/show_screen/show_screen.dart';
import 'package:eventss/presentation/show_screen/binding/show_binding.dart';
import 'package:eventss/presentation/booking_screen/booking_screen.dart';
import 'package:eventss/presentation/booking_screen/binding/booking_binding.dart';
import 'package:eventss/presentation/booking_two_screen/booking_two_screen.dart';
import 'package:eventss/presentation/booking_two_screen/binding/booking_two_binding.dart';
import 'package:eventss/presentation/profile_screen/profile_screen.dart';
import 'package:eventss/presentation/profile_screen/binding/profile_binding.dart';
import 'package:eventss/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:eventss/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signInScreen = '/sign_in_screen';

  static const String splashScreen = '/splash_screen';

  static const String otpScreen = '/otp_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String selectCityScreen = '/select_city_screen';

  static const String searchScreen = '/search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String eventsScreen = '/events_screen';

  static const String categoryPage = '/category_page';

  static const String filterScreen = '/filter_screen';

  static const String filterSelectedScreen = '/filter_selected_screen';

  static const String showScreen = '/show_screen';

  static const String bookingScreen = '/booking_screen';

  static const String bookingTwoScreen = '/booking_two_screen';

  static const String profileOnePage = '/profile_one_page';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: selectCityScreen,
      page: () => SelectCityScreen(),
      bindings: [
        SelectCityBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: eventsScreen,
      page: () => EventsScreen(),
      bindings: [
        EventsBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: filterSelectedScreen,
      page: () => FilterSelectedScreen(),
      bindings: [
        FilterSelectedBinding(),
      ],
    ),
    GetPage(
      name: showScreen,
      page: () => ShowScreen(),
      bindings: [
        ShowBinding(),
      ],
    ),
    GetPage(
      name: bookingScreen,
      page: () => BookingScreen(),
      bindings: [
        BookingBinding(),
      ],
    ),
    GetPage(
      name: bookingTwoScreen,
      page: () => BookingTwoScreen(),
      bindings: [
        BookingTwoBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
