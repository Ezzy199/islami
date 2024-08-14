import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/colors.dart';
import 'package:provider/provider.dart';

import '../providers/my_providers.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
  Locale currentLocale = context.locale;
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
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
              context.setLocale(Locale("en"));
              Navigator.pop(context);

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('english'.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color:
                    currentLocale == Locale('en')?
                    Theme.of(context).primaryColor:
                    AppColors.blackColor
                    )),
                Icon(
                  Icons.done,
                  size: 35,
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: () {
              context.setLocale(Locale("ar"));
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('arabic'.tr(),style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color:
                    currentLocale != Locale('ar')?
                    Theme.of(context).primaryColor:
                    AppColors.blackColor


                ),),
                // Icon(Icons.done),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

