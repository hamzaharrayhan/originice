import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final List<Widget> myChats = List.generate(
    20,
    (index) => ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black26,
        child: ClipRRect(
            child: Image.asset(
              'assets/profile.png',
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(50)),
      ),
      title: Text(
        "Nama ke ${index + 1}",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
      ),
      subtitle: Text(
        "Haloo",
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
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
          padding: EdgeInsets.fromLTRB(12, 40, 12, 15),
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chats",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: [
                  Icon(Icons.search, size: 24, color: Colors.white),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.more_vert, size: 24, color: Colors.white),
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
