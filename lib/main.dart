import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get_cli/core/locales.g.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app/config/constant.dart';
import 'app/routes/app_pages.dart';

void main() async {
  

  await SentryFlutter.init(
    (options) {
      options.dsn = SENTRY_DNS;
    },
    appRunner: () => runApp(
      GetMaterialApp(
        title: 'audio',
        initialRoute: Routes.ONBOARDING,
        getPages: AppPages.routes,
        theme: ThemeData(
          textTheme: GoogleFonts.mulishTextTheme(),
          backgroundColor: Colors.white,
          primaryColor: Colors.white,
          dividerColor: Colors.transparent,
          shadowColor: Colors.transparent,
          appBarTheme: AppBarTheme(elevation: 0),
        ),
        defaultTransition: Transition.native,
        translationsKeys: AppTranslation.translations,
        locale: Locale('vi', 'VN'),
        fallbackLocale: Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        
      ),
    ),
  );
}

// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     return super.createHttpClient(context)
//       ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
//   }
// }

// Future<void> configApp() async {
//   HttpOverrides.global = new MyHttpOverrides();

//   WidgetsFlutterBinding.ensureInitialized();

//   await GetStorage.init();
//   // await Firebase.initializeApp();

//   await dotenv.load(fileName: '.env.dev');

//   if (!kIsWeb) {
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   }

//   Get.put(SystemService());
//   Get.put(UserService());
// }

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   // await Firebase.initializeApp();

//   print("Handling a background message: ${message.messageId}");
// }

/**
 * https://api-sosxe.flextech.asia/api-docs/
 * https://www.figma.com/file/t1nx3yHFNQ009LHELQE4C0/C%E1%BB%A9u-h%E1%BB%99-xe?node-id=0%3A1
 * https://www.figma.com/file/TAOQ1ZGg8TXo0Wx1IS6LBk/C%E1%BB%A9u-h%E1%BB%99?node-id=89%3A0
 * get create page:forgot_pass
 * get generate model with assets/model/payload.json
 * get generate locales assets/locale
 * fgen -o lib/generated/resource.dart
 */
