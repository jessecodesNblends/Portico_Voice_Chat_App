import 'package:flutter/material.dart';

class Friend {
  final String name;
  final String photoUrl;
  final bool onlineStatus;

  Friend({
    @required this.name,
    @required this.photoUrl,
    @required this.onlineStatus,
  });
}

final List<Friend> friends = [
  Friend(
    name: 'Kwaku',
    photoUrl:
        'https://i0.wp.com/toyp.jci.cc/wp-content/uploads/2020/06/Aboudou-Walid-Agro-500x500.jpg',
    onlineStatus: true,
  ),
  Friend(
      name: 'Hassan',
      photoUrl:
          'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      onlineStatus: false),
  Friend(
    name: 'Molly',
    photoUrl:
        'https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fHBlcnNvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    onlineStatus: true,
  ),
  Friend(
    name: 'Ikechukwu',
    photoUrl:
        'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80',
    onlineStatus: false,
  ),
  Friend(
    name: 'Esi',
    photoUrl:
        'https://images.unsplash.com/photo-1507152832244-10d45c7eda57?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fGJsYWNrJTIwcGVvcGxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    onlineStatus: true,
  ),
  Friend(
    name: 'Chen',
    photoUrl:
        'https://images.unsplash.com/photo-1529911194209-8578109840df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fGNoaW5lc2UlMjBwZW9wbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    onlineStatus: true,
  ),
  Friend(
    name: 'Lee',
    photoUrl:
        'https://images.unsplash.com/photo-1598273542724-f8d6723b0ed9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGphcGFuZXNlJTIwbWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    onlineStatus: false,
  ),
  Friend(
    name: 'Ananya',
    photoUrl:
        'https://images.unsplash.com/photo-1597897569252-9df44c7de0db?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fGluZGlhbiUyMHdvbWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    onlineStatus: false,
  ),
  Friend(
    name: 'Jesse',
    photoUrl:
        'https://avatars.githubusercontent.com/u/25150890?s=400&u=9130a74dc675dd90d979a8b8c4a2ba84799b3b8f&v=4',
    onlineStatus: true,
  ),
];
