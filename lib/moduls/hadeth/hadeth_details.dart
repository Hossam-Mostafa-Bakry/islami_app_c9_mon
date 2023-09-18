import 'package:flutter/material.dart';

import 'hadeth_view.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "Hadeth_screen";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadethData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

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
                    args.title,
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
                child: ListView(
                  children: [
                    Text(
                      args.content,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
