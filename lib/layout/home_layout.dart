import 'package:flutter/material.dart';
import 'package:islami_app_c9_mon/moduls/hadeth/hadeth_view.dart';
import 'package:islami_app_c9_mon/moduls/quran/quran_view.dart';
import 'package:islami_app_c9_mon/moduls/radio/radio_view.dart';
import 'package:islami_app_c9_mon/moduls/settings/settings_view.dart';
import 'package:islami_app_c9_mon/moduls/tasbeh/tasbeh_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_screen";

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_light.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/hadeth_icon.png")),
              label: "Hadeth",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/sebha_icon.png")),
              label: "Tasbeh",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/radio_icon.png")),
              label: "Radio",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ],
        ),
      ),
    );
  }
}
