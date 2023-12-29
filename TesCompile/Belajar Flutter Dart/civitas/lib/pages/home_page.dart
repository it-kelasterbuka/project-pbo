import 'package:flutter/material.dart';

//Import Folder Pages
import './message.dart';
import './contact.dart';
import './settings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Image(image: AssetImage('image/bg.jpg')),
              // child: Container(
              //   height: 80,
              //   width: 80,
              //   child: CircleAvatar(
              //     backgroundImage: AssetImage('image/image.jpg'),
              //   ),
              // ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              },
              leading: Icon(
                Icons.home,
                size: 35,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Message(),
                ));
              },
              leading: Icon(
                Icons.message,
                size: 35,
              ),
              title: Text(
                'Message',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Contact(),
                ));
              },
              leading: Icon(
                Icons.contact_phone,
                size: 35,
              ),
              title: Text(
                'Contact',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Settings(),
                ));
              },
              leading: Icon(
                Icons.settings,
                size: 35,
              ),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Ini halaman Home',
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
