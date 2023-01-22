import 'package:flutter/material.dart';

class HomeScreenTabView extends StatefulWidget {
  const HomeScreenTabView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenTabViewState();
  }
}

class _HomeScreenTabViewState extends State<HomeScreenTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text("Home"),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.people_rounded)),
                Tab(icon: Icon(Icons.access_time_outlined)),
                Tab(icon: Icon(Icons.verified))
              ],
            ),
          ),
        ));
  }
}
