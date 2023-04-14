import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Nick',
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
            accountEmail: const Text(
              'nick@gmail.com',
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.indigo,
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1546514355-7fdc90ccbd03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourites'),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.people),
            title: Text('Friends'),
            onTap: null,
            trailing: SizedBox(
              // color: Colors.green,
              width: 40,
              height: 20,
              child: Center(
                child: Text(
                  '137',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Reminder'),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: null,
          ),
          // const ListTile(
          //   leading: Icon(Icons.description),
          //   title: Text('Policies'),
          //   onTap: null,
          // ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
