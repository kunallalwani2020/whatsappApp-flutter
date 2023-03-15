import 'package:flutter/material.dart';
import 'package:whatsapp/Status.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chats.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text("Whatsapp"),
            bottom: TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Call"),
              ),
            ]),
            actions: [
              Icon(Icons.search),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("New Group"),
                  ),
                  PopupMenuItem(
                    child: Text("New Broadcast"),
                  ),
                  PopupMenuItem(
                    child: Text("New Linked"),
                  ),
                  PopupMenuItem(
                    child: Text("New Setting"),
                  ),
                ],
              )
            ],
          ),
          body: TabBarView(children: [
            Text("data"),
           Chats(),
            Status(),
            Calls(),
          ]),
        ));
  }
}
