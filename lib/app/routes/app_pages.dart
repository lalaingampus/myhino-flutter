import 'package:get/get.dart';

import 'package:myhino/app/modules/about/bindings/about_binding.dart';
import 'package:myhino/app/modules/about/views/about_view.dart';
import 'package:myhino/app/modules/account/bindings/account_binding.dart';
import 'package:myhino/app/modules/account/views/account_view.dart';
import 'package:myhino/app/modules/booking_service/bindings/booking_service_binding.dart';
import 'package:myhino/app/modules/booking_service/views/booking_service_view.dart';
import 'package:myhino/app/modules/contact_us/bindings/contact_us_binding.dart';
import 'package:myhino/app/modules/contact_us/views/contact_us_view.dart';
import 'package:myhino/app/modules/forgot_password/bindings/forgot_password_binding.dart';
import 'package:myhino/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:myhino/app/modules/home/bindings/home_binding.dart';
import 'package:myhino/app/modules/home/views/home_view.dart';

import 'package:myhino/app/modules/login/bindings/login_binding.dart';
import 'package:myhino/app/modules/login/views/login_view.dart';
import 'package:myhino/app/modules/product/bindings/product_binding.dart';
import 'package:myhino/app/modules/product/views/product_view.dart';
import 'package:myhino/app/modules/signup/bindings/signup_binding.dart';
import 'package:myhino/app/modules/signup/views/signup_view.dart';

import 'package:myhino/app/modules/vehicle_management/bindings/vehicle_management_binding.dart';
import 'package:myhino/app/modules/vehicle_management/views/vehicle_management_view.dart';
import 'package:myhino/app/widgets/splash.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING_SERVICE,
      page: () => BookingServiceView(),
      binding: BookingServiceBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_US,
      page: () => ContactUsView(),
      binding: ContactUsBinding(),
    ),
    GetPage(
      name: _Paths.VEHICLE_MANAGEMENT,
      page: () => VehicleManagementView(),
      binding: VehicleManagementBinding(),
    ),
    GetPage(
      name: _Paths.VEHICLE_MANAGEMENT,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    )
  ];
}
