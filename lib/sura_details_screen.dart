import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/providers/sura_details_provider.dart';
import 'package:islami/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura details';
  SuraDetailsScreen({super.key});




  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as suraModel;
  var  Provider;
  Provider=Provider.of<SuraDetailsProvider>(context);
  if(Provider.verses.isEmpty){
    Provider.loadSuraFile(model.index);
  }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/main_bg3.png'),
      )),
      child: Scaffold(

        appBar: AppBar(

          title: Text(
            model.name,

          ),
        ),
        body:Container(
          padding: const EdgeInsets.all(18.0),
          margin: EdgeInsets.all(12),
          child: Card(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListView.separated(
              separatorBuilder:(context, index) => Divider(),
              itemBuilder: (context, index) {
                return Text(
                ' ${ Provider.verses [index]}($index)',textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                      fontSize: 25,wordSpacing: 5, fontWeight: FontWeight.bold),

                );
              },
              itemCount:Provider.verses.length,
            ),
          ),
        ),
      ),
    );
  }


}
