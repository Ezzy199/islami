import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/colors.dart';
import 'package:islami/providers/my_providers.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color:provider.appTheme==ThemeMode.dark?
        AppColors.primaryColorDark:
        Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('light'.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color:
                    provider.appTheme==ThemeMode.dark?
                    Colors.white:

                    Theme.of(context).primaryColor)),
                provider.appTheme==ThemeMode.dark? SizedBox() :
                 Icon(
                  Icons.done,
                  size: 35,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(

            onTap: () {
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'dark'.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color:
                  provider.appTheme==ThemeMode.dark?
                      AppColors.yellowColor:
                  AppColors.blackColor),
                ),
                provider.appTheme==ThemeMode.light? SizedBox()
                    :
                Icon(Icons.done),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
