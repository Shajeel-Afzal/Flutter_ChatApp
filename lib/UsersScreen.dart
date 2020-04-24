import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Image.network("URL"),
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "User name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "User Message",
                ),
              ],
            ),
            trailing: Text("10:00 pm"),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.network("URL"),
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "User name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "User Message",
                ),
              ],
            ),
            trailing: Text("10:00 pm"),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.network("URL"),
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "User name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "User Message",
                ),
              ],
            ),
            trailing: Text("10:00 pm"),
          ),
        ],
      ),
    );
  }
}
