import 'package:flutter/material.dart';
import 'package:saving_app/colors.dart';
import 'package:saving_app/home_page.dart';
import 'package:saving_app/portofolio.dart';
import 'package:saving_app/profile_page.dart';
import 'package:saving_app/support_page.dart';

class MainPage extends StatefulWidget{
  const MainPage({Key? key}) : super(key: key);
  static const nameRoute = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedindex = 0;

  static List<Widget> pages = [
    HomePage(),
    PortofolioPage(),
    SupportPage(),
    ProfilePage(),
    
  ];

  void _onitemtapped(int index){
    setState(() {
      _selectedindex = index;
    });
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kBgColor,
      body: pages[_selectedindex],
      bottomNavigationBar: _customBottomNav(),
    );
  }

  Widget _customBottomNav(){
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: kGrey,
            blurRadius: 10, 
            )
        ]
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        onTap: _onitemtapped,
        items: [
        BottomNavigationBarItem(icon: Image.asset('assets/FS.png', width: 24, color: _selectedindex == 0 ? kBlueRibbon : kDarkGrey,),
        label: 'home'),
        BottomNavigationBarItem(icon: Image.asset('assets/FS.png', width: 24, color: _selectedindex == 1 ? kBlueRibbon : kDarkGrey,),
        label: 'poertofolio'),
        BottomNavigationBarItem(icon: Image.asset('assets/FS.png', width: 24, color: _selectedindex == 2 ? kBlueRibbon : kDarkGrey,),
        label: 'support'),
        BottomNavigationBarItem(icon: Image.asset('assets/FS.png', width: 24, color: _selectedindex == 3 ? kBlueRibbon : kDarkGrey,),
        label: 'profile'),
      ],),
      );
  }
}