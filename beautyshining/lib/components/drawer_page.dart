import 'package:beautyshining/components/style.dart';
import 'package:beautyshining/pages/about_page.dart';
import 'package:beautyshining/pages/auth_page.dart';
import 'package:beautyshining/pages/favorite_page.dart';
import 'package:beautyshining/pages/product_view.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({ Key? key }) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorStyles.primaryColor,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Belanja"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
            ),
            accountEmail: Text("Sini"),
            decoration: BoxDecoration(
              color: ColorStyles.secondaryColor,
            ),
          ),
          DrawerListTile(
            iconData: Icons.local_mall,
            title: "Category",
            onTilePressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => ProductView()));
            },
          ),
          DrawerListTile(
            iconData: Icons.favorite,
            title: "Favorite",
            onTilePressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => FavoritePage()));
            },
          ),
          DrawerListTile(
            iconData: Icons.info_outline,
            title: "About",
            onTilePressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => AboutPage()));
            },
          ),
          DrawerListTile(
            iconData: Icons.logout,
            title: "Logout",
            onTilePressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16)),
    );
  }
}