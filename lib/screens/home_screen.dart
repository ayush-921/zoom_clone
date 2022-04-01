import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/widgets/home_meet_btn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _page = 0; //selected item index
    onPageChanged(int page) {
      setState(() {
        _page = page;
      });
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text('Meet & Chat'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              HomeMeetBtn(
                onPressed: () {},
                text: 'New Meeting',
                clr: Colors.deepOrangeAccent,
                icon: Icons.videocam,
              ),
              HomeMeetBtn(
                  onPressed: () {},
                  text: 'Join',
                  icon: Icons.add_box_rounded,
                  clr: buttonColor),
              HomeMeetBtn(
                onPressed: () {},
                text: 'Schedule',
                icon: Icons.calendar_today_rounded,
                clr: buttonColor,
              ),
              HomeMeetBtn(
                onPressed: () {},
                text: 'Share Screen',
                icon: Icons.screen_share_rounded,
                clr: buttonColor,
              )
            ],
          ),
          const Expanded(
            child: Center(
                child: Text(
              'Create/Join Meeting with Just One Tap',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
              ),
              label: 'Meet & Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.schedule_rounded,
              ),
              label: 'Meetings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.contacts_outlined,
              ),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications_outlined),
              label: 'Meet & Chat',
            ),
          ]),
    );
  }
}
