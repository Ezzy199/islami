import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData (
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        iconTheme: IconThemeData(size: 30,color: Colors.black),
        elevation: 0,
        centerTitle: true,
        titleTextStyle:
            GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),
      ),
      iconTheme: IconThemeData(
        size: 30,
        color:Colors.black,
      ),
      dividerTheme:
          DividerThemeData(color: AppColors.primaryColor, thickness: 3),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
      textTheme: TextTheme(
        bodyLarge:  GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor),
        bodyMedium:   GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor),
        bodySmall:   GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor),
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primaryColor,
          onPrimary: AppColors.primaryColor,
          secondary: AppColors.primaryColor,
          onSecondary: AppColors.blackColor,
          error: AppColors.primaryColor,
          onError:AppColors.primaryColor,
          background: AppColors.primaryColor,
          onBackground: AppColors.primaryColor,
          surface:AppColors.primaryColor,
          onSurface: AppColors.primaryColor));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(size: 30,color: Colors.white),
        titleTextStyle:
        GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
      ),
      iconTheme: IconThemeData(
        size: 30,
        color: AppColors.yellowColor,
      ),
      dividerTheme:
      DividerThemeData(color: AppColors.primaryColor, thickness: 3),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColorDark,
        selectedItemColor: AppColors.yellowColor,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
      textTheme: TextTheme(
        bodyLarge:  GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        bodyMedium:   GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        bodySmall:   GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.yellowColor),
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primaryColor,
          onPrimary: AppColors.primaryColor,
          secondary: AppColors.primaryColor,
          onSecondary: AppColors.primaryColor,
          error: AppColors.primaryColor,
          onError:AppColors.primaryColor,
          background: AppColors.primaryColor,
          onBackground: AppColors.primaryColor,
          surface:AppColors.primaryColor,
          onSurface: AppColors.primaryColor));

}
