

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadeth_details_screen.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/providers/my_providers.dart';
import 'package:islami/providers/sura_details_provider.dart';
import 'package:provider/provider.dart';

import 'sura_details_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (context) => MyProvider(),),
         ChangeNotifierProvider(create: (context) => SuraDetailsProvider(),),
       ],
       child: EasyLocalization(
  supportedLocales: [Locale('en'), Locale('ar'),],
  path: 'assets/translation',
  saveLocale: true,
  startLocale: Locale("en"),

  child: Islami()),

    ),
  );
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: Locale(provider.langCode),
      debugShowCheckedModeBanner: false,
      themeMode:provider.appTheme,
      theme:MyThemeData.lightTheme,
    darkTheme: MyThemeData.darkTheme,

      initialRoute: HomeScreen.routeName,
      routes:{
        HomeScreen.routeName : (context) =>HomeScreen(),
        SuraDetailsScreen.routeName : (context) =>SuraDetailsScreen(),
        HadethDetailsScreen.routeName : (context) =>HadethDetailsScreen(),
      } ,
    );
  }
}

