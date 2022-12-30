
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return dynamicListView();
  }
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape tapped");
        },
      ),
      const ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),
      const ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
    ],
  );
  return listView;
}


List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget dynamicListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.save_rounded),
          title: Text(listItems[index]),
          onTap: () {
            debugPrint('${listItems[index]} was tapped');
          },
        );
      }
  );

  return listView;
}
