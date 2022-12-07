import 'package:flutter/material.dart';
import 'package:writing_exchange/app/tab_helper.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.currentTab,
    required this.onSelectTab,
  });
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentTab.index,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(tabItem: TabItem.writing),
        _buildItem(tabItem: TabItem.question),
        _buildItem(tabItem: TabItem.profile),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem({required TabItem tabItem}) {
    return BottomNavigationBarItem(
      icon: tabIcons[tabItem]!,
      activeIcon: tabActiveIcons[tabItem]!,
      label: tabNames[tabItem]!,
    );
  }
}
