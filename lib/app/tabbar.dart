import 'package:flutter/material.dart';
import 'package:writing_exchange/correction/correction_home/correction_home_view.dart';
import 'package:writing_exchange/writing/list.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    onTapTab(int index) {
      switch (index) {
        case 0:
          // only scroll to top when current index is selected.
          if (_selectedIndex == index) {
            _homeController.animateTo(
              0.0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            );
          }
          break;
        case 1:
          break;
      }
      setState(
        () {
          _selectedIndex = index;
        },
      );
    }

    Widget body(int index) {
      switch (index) {
        case 0:
          return CorrectionHomeView();
        case 1:
          return const WritingListPage();
        default:
          return const SizedBox.shrink();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
        backgroundColor: Theme.of(context).backgroundColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: body(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.create_outlined),
            activeIcon: Icon(Icons.create),
            label: '添削',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            activeIcon: Icon(Icons.article),
            label: '私の作文',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: onTapTab,
      ),
    );
  }
}
