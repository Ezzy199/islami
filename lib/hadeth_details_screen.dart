import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadethScreen';
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/images/main_bg3.png'))),
      child: Scaffold(

        appBar: AppBar(
          title: Text(model.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    model.content[index],
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.elMessiri(
                        fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                );
              },
              itemCount: model.content.length,
            ),
          ),
        ),
      ),
    );
  }
}
