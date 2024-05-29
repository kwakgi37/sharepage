import 'package:flutter/material.dart';
import 'my_page.dart';

class SharePage extends StatefulWidget {
  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Share Page',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey[300],

      body: Center(
        child: Text(
          'This is the Share Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Project List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.unarchive),
            label: 'Archive',
          ),
        ],
        selectedItemColor: Colors.green,
        onTap: (int index) { // view_list 버튼 누르면 my_page로 이동
          setState(() {
            _currentIndex = index;
          });
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyPage()),
            );
          }
        },
      ),
    );
  }
}
