import 'package:flutter/material.dart';
import 'package:new_app/models/user.dart';

class ItemData extends StatelessWidget {
  final User user;
  const ItemData({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("${user.firstName!} ${user.lastName!}"),
          subtitle: Text(user.email!),
          leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar!)),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
        ),
        Divider(),
      ],
    );
  }
}
