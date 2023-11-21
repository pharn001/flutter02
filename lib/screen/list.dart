import 'package:flutter/material.dart';
import 'uer_page.dart';

class Mylistview extends StatefulWidget {
  const Mylistview({super.key});

  @override
  State<Mylistview> createState() => _MylistviewState();
}

class _MylistviewState extends State<Mylistview> {
  List<User> users = [
    const User(
      username: 'sarah Abs',
      email: 'sarah.Abs@gmail.com',
      urlavatar: 'https://source.unsplash.com/random',
    ),
    const User(
      username: 'thaxun',
      email: 'jack@gmailcom',
      urlavatar: '../logo/tx.png',
    ),
    const User(
      username: 'tung',
      email: 'tung.Abs@gmail.com',
      urlavatar: '../image/tung.png',
    ),
    const User(
      username: 'somphran',
      email: 'som.Abs@gmail.com',
      urlavatar: '../image/phran.png',
    ),
    const User(
      username: 'arinoy',
      email: 'ari.Abs@gmail.com',
      urlavatar: '../image/aaenoy.png',
    ),
    const User(
      username: 'khew',
      email: 'khew.Abs@gmail.com',
      urlavatar: '../image/green.png',
    ),
    const User(
      username: 'leetar',
      email: 'leetar.Abs@gmail.com',
      urlavatar: '../image/tar.jpeg',
    ),
    const User(
      username: 'leekhanvan',
      email: 'lee.Abs@gmail.com',
      urlavatar: '../image/lee.png',
    ),
    const User(
      username: 'ting',
      email: 'ting.Abs@gmail.com',
      urlavatar: '../image/xay.png',
    ),
    const User(
      username: 'khumphet',
      email: 'khum.Abs@gmail.com',
      urlavatar: '../image/khumphet.png',
    ),
    const User(
      username: 'seng',
      email: 'seng.Abs@gmail.com',
      urlavatar: 'https://source.unsplash.com/random',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(user.urlavatar),
                  // backgroundImage: NetworkImage("https://source.unsplash.com/random?sig=$index&woman"),
                ),
                title: Text(user.username),
                subtitle: Text(user.email),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserPage(user: user)));
                },
              ),
            );
          }),
    );
  }
}

class User {
  final String username;
  final String email;
  final String urlavatar;
  const User({
    required this.username,
    required this.email,
    required this.urlavatar,
  });
}
