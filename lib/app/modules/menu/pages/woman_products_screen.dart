import 'package:flutter/material.dart';
import 'package:flutter_clone_zara_app/app/modules/menu/controllers/menu_controllers.dart';

class WomanProductsScreen extends StatefulWidget {
  const WomanProductsScreen({super.key});

  @override
  State<WomanProductsScreen> createState() => _WomanProductsScreenState();
}

class _WomanProductsScreenState extends State<WomanProductsScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  MainControllers controllers = MainControllers();

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      initialIndex: 0,
      length: 12,
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
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.desktop_windows_outlined,
              )),
          IconButton(
              onPressed: () {},
              icon: Transform.rotate(
                  angle: 1.6, child: const Icon(Icons.splitscreen_outlined))),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.grid_view_outlined)),
        ],
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
                  Tab(text: 'VIEW ALL'),
                  Tab(text: 'MIDI | MAXI'),
                  Tab(text: 'MINI'),
                  Tab(text: 'PARTY'),
                  Tab(text: 'KNIT'),
                  Tab(text: 'JUMPSUITS'),
                  Tab(text: 'LONG SLEEVE'),
                  Tab(text: 'SATIN EFFECT'),
                  Tab(text: 'DENIM'),
                  Tab(text: 'TULLE'),
                  Tab(text: 'BODYCON'),
                  Tab(text: 'BLACK'),
                ]),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const MidiWomanProducts(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 38,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.3)),
                child: const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "SEARCH",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MidiWomanProducts extends StatelessWidget {
  const MidiWomanProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.55,
          mainAxisSpacing: 36,
          crossAxisSpacing: 10,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: Colors
                  .white, // Ubah sesuai dengan warna latar belakang yang Anda inginkan
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/dress1.jpg"),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("RUFFLED MINI DRESS"),
                        InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.turned_in_not,
                              size: 20,
                            ))
                      ],
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: const Text("59.90 USD"),
                  )
                ],
              ));
        });
  }
}
