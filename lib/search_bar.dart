import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchBarView extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const SearchBarView({Key key, @required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextField(
          keyboardType: TextInputType.text,
          autocorrect: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            hintText: 'search',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(this.height);
}
