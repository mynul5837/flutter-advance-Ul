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
                        child: Icon(Icons.close),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                HoverListItem(
                  icon: Icons.home,
                  text: 'Home',
                ),
                HoverListItem(
                  icon: Icons.error,
                  text: 'Issue',
                ),
                HoverListItem(
                  icon: Icons.merge_type,
                  text: 'Pull Request',
                ),
                HoverListItem(
                  icon: Icons.business_center,
                  text: 'Projects',
                ),
                HoverListItem(
                  icon: Icons.chat,
                  text: 'Discussion',
                ),
                HoverListItem(
                  icon: Icons.code,
                  text: 'Codespaces',
                ),
                HoverListItem(
                  icon: Icons.smart_toy,
                  text: 'Copilot',
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Advanced UI - LAB 06 "),
          backgroundColor: const Color.fromARGB(255, 47, 26, 63),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image(
              image: NetworkImage(
                  'https://www.pixel4k.com/wp-content/uploads/2018/10/owl-colorful-art-4k_1540755489.jpg'),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Welcome to the Advanced UI!',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 47, 26, 63),
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

class HoverListItem extends StatefulWidget {
  final IconData icon;
  final String text;

  const HoverListItem({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  _HoverListItemState createState() => _HoverListItemState();
}

class _HoverListItemState extends State<HoverListItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        color: _isHovered ? Colors.grey[800] : Colors.black,
        child: ListTile(
          leading: Icon(widget.icon, color: Colors.white),
          title: Text(widget.text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
