import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      const UserAccountsDrawerHeader(
          accountName: Text("Irfan Yas"),
          accountEmail: Text("irfanyasiras@gmail.com"),
          currentAccountPicture:
              CircleAvatar(backgroundImage: AssetImage("assets/img/pp.png"))),
      DrawerListTile(
        iconData: Icons.group,
        title: "New Group",
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: Icons.lock,
        title: "New Secret Group",
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: Icons.notifications,
        title: "New Channel Chat",
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: Icons.contacts,
        title: "Contacts",
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: Icons.bookmark_border,
        title: "Saved Messages",
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: Icons.phone,
        title: "Calls",
        onTilePressed: () {},
      ),
    ]));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: const TextStyle(fontSize: 16)),
    );
  }
}
