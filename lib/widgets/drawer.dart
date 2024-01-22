import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  // @Override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media.licdn.com/dms/image/D5603AQHgctwcA1T_DA/profile-displayphoto-shrink_800_800/0/1681496593722?e=1711584000&v=beta&t=2lOOV3_dJ7SMvJMo9hPOd6h92kpuh62DakTsfyTwmus";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Bhakti Bagadia"),
              accountEmail: Text("bagadiabm@rknec.edu"),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Mail",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.deepPurple),
            ),
          )
        ],
      ),
    );
  }
}
