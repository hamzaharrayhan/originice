import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final List<Widget> myChats = List.generate(
    20,
    (index) => ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black26,
        child: Image.asset(
          'assets/profile.png',
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        "Nama ke ${index + 1}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        "Haloo",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      trailing: Chip(label: Text("2")),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chats",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: [
                  Icon(Icons.search, size: 30, color: Colors.white),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.more_vert, size: 30, color: Colors.white),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: myChats.length,
              itemBuilder: (context, index) => myChats[index]),
        )
      ],
    ));
  }
}
