import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              title: Text("Chat Item By:Randi")),
          body: Padding(
            padding: const EdgeInsets.all(6.0),
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ChatItem(
                  imageUrl: "https://picsum.photos/id/$index/200/300",
                  title: faker.person.name(),
                  subtitle: faker.lorem.sentence(),
                );
              },
            ),
          )),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  ChatItem(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
