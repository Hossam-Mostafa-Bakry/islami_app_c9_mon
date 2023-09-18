import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c9_mon/moduls/hadeth/hadeth_details.dart';

class HadethView extends StatelessWidget {
  List<HadethData> allHadethData = [];

  HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    readFile();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/hadeth_header.png"),
        Divider(
          color: theme.primaryColor,
          thickness: 1.5,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 1.5,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadethDetailsScreen.routeName,
                  arguments: HadethData(
                      title: allHadethData[index].title,
                      content: allHadethData[index].content),
                );
              },
              child: Text(
                allHadethData[index].title,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              color: theme.primaryColor,
              thickness: 1,
              indent: 70,
              endIndent: 70,
              height: 5,
            ),
            itemCount: allHadethData.length,
          ),
        )
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> allHadeth = text.split("#");

    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();

      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);

      HadethData hadethData = HadethData(title: title, content: content);
      allHadethData.add(hadethData);
    }
    print(text);
  }
}

class HadethData {
  final String title;
  final String content;

  HadethData({
    required this.title,
    required this.content,
  });
}
