import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/generated/l10n.dart';

import 'core/helper_functions/on_generate_routes.dart';
import 'core/services/shared_preferences_singleton.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() async {
  // makes sure that you have an instance of the WidgetsBinding,
  // which is required to use platform channels to call the native code.
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryColor,
          )),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
    );
  }
}
