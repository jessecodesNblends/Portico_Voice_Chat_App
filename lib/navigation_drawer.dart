import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationDrawer extends StatelessWidget {
  final List<NavigationMenuItem> menuItems;
  final String displayName;
  final String email;

  const NavigationDrawer({
    @required this.menuItems,
    @required this.displayName,
    @required this.email,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Drawer(
      child: Container(
        color: theme.primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  ClipOval(
                    child: CircleAvatar(
                      radius: 40,
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/25150890?s=400&u=9130a74dc675dd90d979a8b8c4a2ba84799b3b8f&v=4',
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    this.displayName,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 4),
                  Text(
                    this.email,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              decoration: BoxDecoration(color: Colors.purple[400]),
            ),
            ...navigationMenuList(theme),
          ],
        ),
      ),
    );
  }

  List<Widget> navigationMenuList(theme) {
    return this.menuItems.map((item) {
      return Container(
        color: item.selectedItemColor,
        child: ListTile(
          leading: item.icon,
          title: Text(
            item.title,
            style: theme.textTheme.subtitle1.apply(color: item.titleColor),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 2,
          ),
          onTap: item.onItemSelected,
        ),
      );
    }).toList();
  }
}

class NavigationMenuItem {
  final String title;
  final Widget icon;
  final Color titleColor;
  final Color selectedItemColor;
  final Function onItemSelected;

  NavigationMenuItem({
    @required this.title,
    @required this.icon,
    @required this.onItemSelected,
    this.titleColor = Colors.white,
    this.selectedItemColor,
  });
}
