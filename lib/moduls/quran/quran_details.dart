import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c9_mon/moduls/quran/quran_view.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "quran_details";

  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    if (content.isEmpty) readFile(args.suraNumber);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_light.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text("إسلامي")),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 120),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: Colors.black,
                  ),
                ],
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 1.2,
                height: 10,
                endIndent: 30,
                indent: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    allVerses[index],
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                  itemCount: allVerses.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // async vs  sync
  readFile(String suraNumber) async {
    String text = await rootBundle.loadString("assets/files/$suraNumber.txt");
    content = text;
    allVerses = content.split("\n");
    setState(() {});

    print(text);
  }
}
