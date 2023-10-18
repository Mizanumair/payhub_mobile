import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payhub/src/features/auth/login/login_binding.dart';
import 'package:payhub/src/features/auth/login/login_screen.dart';
import 'package:payhub/src/features/auth/splash/splash_binding.dart';
import 'package:payhub/src/features/auth/splash/splash_screen.dart';
import 'package:payhub/src/features/auth/splash/splash_second.dart';
import 'package:payhub/src/features/features/home/home_binding.dart';
import 'package:payhub/src/features/features/home/home_screen.dart';
import 'package:payhub/src/features/features/payment/approved_payment.dart';
import 'package:payhub/src/features/features/payment/enter_pin.dart';
import 'package:payhub/src/features/features/payment/fail_transaction.dart';
import 'package:payhub/src/features/features/payment/insert_card.dart';
import 'package:payhub/src/features/features/payment/payment_binding.dart';
import 'package:payhub/src/features/features/payment/payment_method_screen.dart';
import 'package:payhub/src/features/features/payment/processing_transaction.dart';
import 'package:payhub/src/features/features/vendor/bill_details.dart';
import 'package:payhub/src/features/features/vendor/bill_number.dart';
import 'package:payhub/src/features/features/vendor/bill_summary.dart';
import 'package:payhub/src/features/features/vendor/vendor_binding.dart';
import 'package:payhub/src/features/features/vendor/vendor_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String splashSecond = '/splashSecond';
  static const String login = '/login';
  static const String home = '/home';
  static const String vendor = '/vendor';
  static const String billNumber = '/billNumber';
  static const String billDetails = '/billDetails';
  static const String billSummary = '/billSummary';
  static const String paymentMethod = '/paymentMethod';
  static const String insertCard = '/insertCard';
  static const String enterPin = '/enterPin';
  static const String processingTransaction = '/processingTransaction';
  static const String approvedTransaction = '/approvedTransaction';
  static const String failedTransaction = '/failedTransaction';

  static String getSplashRoute() => splash;
  static String getSplashSecondRoute() => splashSecond;
  static String getLoginRoute() => login;
  static String getHomeRoute() => home;
  static String getVendorRoute() => vendor;
  static String getBillNumberRoute() => billNumber;
  static String getBillDetailsRoute() => billDetails;
  static String getBillSummaryRoute() => billSummary;
  static String getPaymentMethodRoute() => paymentMethod;
  static String getInsertCardRoute() => insertCard;
  static String getEnterPinRoute() => enterPin;
  static String getProcessingTransactionRoute() => processingTransaction;
  static String getApprovedTransactionRoute() => approvedTransaction;
  static String getFailedTransactionRoute() => failedTransaction;

  static generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return GetPageRoute(
            settings: settings,
            routeName: getSplashRoute(),
            page: () => SplashScreen());
      case splashSecond:
        return GetPageRoute(
            settings: settings,
            routeName: getSplashSecondRoute(),
            page: () => SplashSecond());
      case login:
        return GetPageRoute(
            settings: settings,
            routeName: getLoginRoute(),
            page: () => LoginScreen());
      case home:
        return GetPageRoute(
            settings: settings,
            routeName: getHomeRoute(),
            page: () => HomeScreen());
      case vendor:
        return GetPageRoute(
            settings: settings,
            routeName: getVendorRoute(),
            page: () => VendorScreen());
      case billNumber:
        return GetPageRoute(
            settings: settings,
            routeName: getBillNumberRoute(),
            page: () => BillNumber());
      case billDetails:
        return GetPageRoute(
            settings: settings,
            routeName: getBillNumberRoute(),
            page: () => BillDetailsScreen());
      case billSummary:
        return GetPageRoute(
            settings: settings,
            routeName: getBillSummaryRoute(),
            page: () => BillSummary());
      case paymentMethod:
        return GetPageRoute(
            settings: settings,
            routeName: getPaymentMethodRoute(),
            page: () => PaymentMethod());
      case insertCard:
        return GetPageRoute(
            settings: settings,
            routeName: getInsertCardRoute(),
            page: () => InsertCard());
      case enterPin:
        return GetPageRoute(
            settings: settings,
            routeName: getEnterPinRoute(),
            page: () => EnterPin());
      case processingTransaction:
        return GetPageRoute(
            settings: settings,
            routeName: getProcessingTransactionRoute(),
            page: () => ProcessingTransaction());
      case approvedTransaction:
        return GetPageRoute(
            settings: settings,
            routeName: getApprovedTransactionRoute(),
            page: () => ApprovedPayment());
      case failedTransaction:
        return GetPageRoute(
            settings: settings,
            routeName: getFailedTransactionRoute(),
            page: () => FailedTransaction());
      default:
        return null;
    }
  }

  static getPages() => [
        GetPage(
          name: splash,
          page: () => SplashScreen(),
          binding: SplashBinding(),
        ),
        GetPage(
          name: splashSecond,
          page: () => SplashSecond(),
          binding: SplashBinding(),
        ),
        GetPage(
          name: login,
          page: () => LoginScreen(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: home,
          page: () => HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: vendor,
          page: () => VendorScreen(),
          binding: VendorBinding(),
        ),
        GetPage(
          name: billNumber,
          page: () => BillNumber(),
          binding: VendorBinding(),
        ),
        GetPage(
          name: billDetails,
          page: () => BillDetailsScreen(),
          binding: VendorBinding(),
        ),
        GetPage(
          name: billSummary,
          page: () => BillSummary(),
          binding: VendorBinding(),
        ),
        GetPage(
          name: paymentMethod,
          page: () => PaymentMethod(),
          binding: PaymentBinding(),
        ),
        GetPage(
          name: insertCard,
          page: () => InsertCard(),
          binding: PaymentBinding(),
        ),
        GetPage(
          name: enterPin,
          page: () => EnterPin(),
          binding: PaymentBinding(),
        ),
        GetPage(
          name: processingTransaction,
          page: () => ProcessingTransaction(),
          binding: PaymentBinding(),
        ),
        GetPage(
          name: approvedTransaction,
          page: () => ApprovedPayment(),
          binding: PaymentBinding(),
        ),
        GetPage(
          name: failedTransaction,
          page: () => FailedTransaction(),
          binding: PaymentBinding(),
        ),
      ];
}
