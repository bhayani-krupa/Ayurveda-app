// user_info.dart

import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String username;

  const UserInfo({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Padding(
        padding: const EdgeInsets.only(left: 125),
        child: Text(" Hello, $username!"),


      ),
      // Add your user image here
      trailing: CircleAvatar(
        // Add your user image asset or network image
        backgroundImage: AssetImage('assets/user_image.png'),
      ),
    );
  }
}
