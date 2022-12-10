import 'package:flutter/material.dart';
import 'package:writing_exchange/app/routes.dart';
import 'package:writing_exchange/i18n/strings.g.dart';

enum TabItem {
  writing,
  question,
  profile,
}

final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
  TabItem.writing: GlobalKey<NavigatorState>(),
  TabItem.question: GlobalKey<NavigatorState>(),
  TabItem.profile: GlobalKey<NavigatorState>(),
};

Map<TabItem, String> initialRoutes = {
  TabItem.writing: Routes.writingTop,
  TabItem.question: Routes.questionTop,
  TabItem.profile: Routes.profileTop,
};

Map<TabItem, String> tabNames = {
  TabItem.writing: t.writing,
  TabItem.question: t.question,
  TabItem.profile: t.profile,
};

Map<TabItem, Icon> tabIcons = {
  TabItem.writing: const Icon(Icons.article_outlined),
  TabItem.question: const Icon(Icons.question_answer_outlined),
  TabItem.profile: const Icon(Icons.person_outlined),
};

Map<TabItem, Icon> tabActiveIcons = {
  TabItem.writing: const Icon(Icons.article),
  TabItem.question: const Icon(Icons.question_answer),
  TabItem.profile: const Icon(Icons.person),
};
