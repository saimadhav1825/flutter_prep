import 'package:flutter/material.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfileScreenViewState();
  }
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
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
    );
  }
}
