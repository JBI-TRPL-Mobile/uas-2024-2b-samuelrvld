import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Messages")),
      body: ListView.builder(
        itemCount: 10, // Dummy data
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text("User $index"),
            subtitle: Text("Message $index"),
            onTap: () {
              // Implementasikan fitur membaca pesan
            },
          );
        },
      ),
    );
  }
}
