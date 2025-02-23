import 'package:flutter/material.dart';

void main() {
  runApp(const FirstUI());
}

class FirstUI extends StatefulWidget {
  const FirstUI({super.key});

  @override
  _FirstUIState createState() => _FirstUIState();
}

class _FirstUIState extends State<FirstUI> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    SettingsPage(),
    ContactPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  onTap: () => _onItemTapped(0),
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
                HoverListItem(
                  icon: Icons.settings,
                  text: 'Settings',
                  onTap: () => _onItemTapped(1),
                ),
                HoverListItem(
                  icon: Icons.contact_mail,
                  text: 'Contact',
                  onTap: () => _onItemTapped(2),
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
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 47, 26, 63),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
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
  final VoidCallback? onTap;

  const HoverListItem(
      {Key? key, required this.icon, required this.text, this.onTap})
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
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          color: _isHovered ? Colors.grey[800] : Colors.black,
          child: ListTile(
            leading: Icon(widget.icon, color: Colors.white),
            title: Text(widget.text, style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings',
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Contact',
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}
