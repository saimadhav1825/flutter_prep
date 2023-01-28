import 'package:flutter/material.dart';

import '../mvcpattern/controller/news_controller.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfileScreenViewState();
  }
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  final NewsController _newsController = NewsController();

  @override
  void initState() {
    _newsController.getTodayNewsAsStream();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Profile"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          PopupMenuButton(
              itemBuilder: (context) => const <PopupMenuEntry<String>>[
                    PopupMenuItem(child: Text("Logout")),
                    PopupMenuItem(child: Text("Setting"))
                  ])
        ],
      ),
      body: _newsController.newsModelList.length > 0
          ? ListView.builder(
              itemCount: _newsController.newsModelList.length,
              itemBuilder: (con, index) {
                return Card(
                  child: ListTile(
                    title: Image.network(
                        _newsController.newsModelList[index].urlToImage),
                    subtitle: Text(_newsController.newsModelList[index].title),
                  ),
                );
              })
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
