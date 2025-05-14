import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
    const ListTileWidget({super.key});
  @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: ListView(
                children: [
                    ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Haechan'),
                subtitle: Text('Online'),
                trailing: Icon(Icons.message),
                onTap: () {
                    print('haechan diklik');
                       },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('Mark'),
                      subtitle: Text('Online'),
                      trailing: Icon(Icons.message),
                      onTap: () {
                         print('Mark diklik');
                           },
                    ),
                 ],
            ),
        );
    }
}
