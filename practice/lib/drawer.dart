import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Text(
          //     "This is Mohit",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   decoration: BoxDecoration(
          //     color: Colors.indigoAccent,
          //   ),
          // ),
          UserAccountsDrawerHeader(
              currentAccountPicture: Image.network(
                  "https://images.unsplash.com/photo-1501432377862-3d0432b87a14?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1868&q=80"),
              accountName: Text("Mohit Parashar"),
              accountEmail: Text("mohit1672002@gmail.com")),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("mohit1672002@gmail.com"),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
