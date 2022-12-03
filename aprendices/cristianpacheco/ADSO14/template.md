```
import 'package:flutter/material.dart';
import 'user.dart';

class ItemData extends StatelessWidget {
  const ItemData({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context){
    return Column(
      children:[
        ListTile(
          title: Text('${user.firstName!} ${user.lastName!}'),
          subtitle: Text(user.correoElectronico!),
          leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar!),),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blue),
        ),
        Divider(),
      ],
    );
  }
}
```
