import 'package:flutter/material.dart';
import 'package:flutter_clone_zara_app/app/components/app_elevated_button.dart';
import 'package:flutter_clone_zara_app/app/modules/menu/controllers/menu_controllers.dart';
import 'package:flutter_clone_zara_app/app/modules/menu/widgets/menu_woman_widgets.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  MainControllers controllers = MainControllers();

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      initialIndex: 0,
      length: 7,
      vsync: this,
    );

    tabController.addListener(() {
      setState(() {
        controllers.setCurrentIndex(tabController.index);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: const FlexibleSpaceBar(
            background: Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Center(
                child: Text(
                  "ZARA",
                  style: TextStyle(fontSize: 72),
                ),
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(top: BorderSide(width: 0.5))),
              child: TabBar(
                  indicator: const BoxDecoration(),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black45,
                  isScrollable: true,
                  controller: tabController,
                  onTap: (index) {
                    setState(() {
                      controllers.setCurrentIndex(index);
                    });
                  },
                  tabs: const [
                    Tab(text: 'WOMAN'),
                    Tab(text: 'MAN'),
                    Tab(text: 'KIDS'),
                    Tab(text: 'HOME'),
                    Tab(text: 'MASSIMO'),
                    Tab(text: 'DUTTI'),
                    Tab(text: 'BEAUTY'),
                  ]),
            ),
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            MenuWomanWidget(),
            Text("laki-laki"),
            Text("anak-anak"),
            Text("utama"),
            Text("massimo"),
            Text("dutti"),
            Text("kecantikan"),
          ],
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.all(20),
          height: 80,
          width: double.infinity,
          child: AppElevatedButton(
            onPressed: () {},
            side: const BorderSide(width: 0.5),
            backgroundColor: Colors.white,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "SEARCH",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ));
  }
}
