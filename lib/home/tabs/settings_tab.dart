import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/bottom_sheets/language_bottom_sheets.dart';
import 'package:islami/bottom_sheets/theme_bottom_sheets.dart';
import 'package:islami/colors.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Theme'.tr(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,

                builder:(context) {

               return ThemeBottomSheet();
              },);
            },
            child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Text(
                  'light'.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'language'.tr(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,

                builder:(context) {

                  return LanguageBottomSheet();
                },);
            },
            child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Text(
                  'arabic'.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                )),
          ),
        ],
      ),
    );
  }
}
