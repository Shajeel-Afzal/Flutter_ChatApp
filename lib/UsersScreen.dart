import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network("URL"),
      ),
      title: Text(
        "User name",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
