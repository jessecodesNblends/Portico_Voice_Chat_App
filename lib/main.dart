import 'package:Voice_Chat_App/data_source.dart';
import 'package:Voice_Chat_App/navigation_drawer.dart';
import 'package:Voice_Chat_App/search_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.purple,
        drawer: NavigationDrawer(
          displayName: 'Jesse Ocran',
          email: 'example@gmail.com',
          menuItems: [
            NavigationMenuItem(
              title: 'New Group',
              icon: Icon(
                Icons.group,
                color: Colors.white,
              ),
              onItemSelected: () {},
            ),
            NavigationMenuItem(
              title: 'Contacts',
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onItemSelected: () {},
            ),
            NavigationMenuItem(
              title: 'Calls',
              icon: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              onItemSelected: () {},
            ),
            NavigationMenuItem(
              title: 'Settings',
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onItemSelected: () {},
            )
          ],
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://i0.wp.com/toyp.jci.cc/wp-content/uploads/2020/06/Aboudou-Walid-Agro-500x500.jpg',
                ),
              ),
              onPressed: () {},
            ),
            Padding(padding: const EdgeInsets.only(right: 8))
          ],
          title: Text('Chat Rooms'),
          elevation: 0,
          bottom: SearchBarView(
            height: AppBar().preferredSize.height,
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            margin: const EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: friends.length,
                    itemBuilder: (context, index) {
                      Friend friend = friends.reversed.toList()[index];
                      return Container(
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipOval(
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    color: Colors.purple,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          NetworkImage(friend.photoUrl),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 45,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: friend.onlineStatus
                                        ? Colors.green
                                        : Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(friend.name)
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Divider(thickness: 1),
                ),
                Expanded(
                  flex: 4,
                  child: ListView.builder(
                    itemCount: friends.length,
                    itemBuilder: (context, index) {
                      Friend friend = friends[index];
                      return ListTile(
                        leading: Stack(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(friend.photoUrl),
                            ),
                            Positioned(
                                left: 40,
                                child: CircleAvatar(
                                  radius: 8,
                                  backgroundColor: friend.onlineStatus
                                      ? Colors.green
                                      : Colors.transparent,
                                )),
                          ],
                        ),
                        contentPadding: const EdgeInsets.only(left: 0),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(friend.name,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('5:00pm'),
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Status goes here'),
                            // Icon(Icons.speaker)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
