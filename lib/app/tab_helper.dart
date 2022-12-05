import 'package:flutter/material.dart';
import 'package:writing_exchange/app/tab_navigator.dart';
import 'package:writing_exchange/i18n/strings.g.dart';

enum TabItem {
  correction,
  writing,
}

Map<TabItem, String> initialRoutes = {
  TabItem.correction: TabNavigatorRoutes.correctionHome,
  TabItem.writing: TabNavigatorRoutes.writingHome,
};

Map<TabItem, String> tabNames = {
  TabItem.correction: t.correct,
  TabItem.writing: t.writing,
};

Map<TabItem, Icon> tabIcons = {
  TabItem.correction: const Icon(Icons.create_outlined),
  TabItem.writing: const Icon(Icons.article_outlined),
};

Map<TabItem, Icon> tabActiveIcons = {
  TabItem.correction: const Icon(Icons.create),
  TabItem.writing: const Icon(Icons.article),
};
