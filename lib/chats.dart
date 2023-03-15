import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          
          backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/1547971/pexels-photo-1547971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ),
        title: Text("Jacky"),
        subtitle: Text("Good morning"),
        trailing: Text("11:45Pm"),
      );
    });
  }
}
