import 'package:flutter/material.dart';

void main() {
  runApp(const FirstUI());
}

class FirstUI extends StatelessWidget {
  const FirstUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.pixel4k.com/wp-content/uploads/2018/10/owl-colorful-art-4k_1540755489.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.tiktok, color: Colors.white),
                      FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text('Home', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.error, color: Colors.white),
                  title: Text('Issue', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.merge_type, color: Colors.white),
                  title: Text('Pull Request',
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.business_center, color: Colors.white),
                  title:
                      Text('Projects', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.chat, color: Colors.white),
                  title:
                      Text('Discussion', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.code, color: Colors.white),
                  title:
                      Text('Codespaces', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.smart_toy, color: Colors.white),
                  title: Text('Copilot', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("GitHub Landing Page"),
          backgroundColor: const Color(0xFF24292E),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image(
              image: NetworkImage(
                  'https://github.githubassets.com/images/modules/site/home-illo-team.svg'),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Welcome to GitHub!',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF24292E),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text('Get Started'),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF24292E),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Contact',
            ),
          ],
        ),
      ),
    );
  }
}
