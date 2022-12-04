import 'package:flutter/material.dart';

class CorrectionPage extends StatefulWidget {
  const CorrectionPage({super.key});

  @override
  State<CorrectionPage> createState() => _CorrectionPageState();
}

class _CorrectionPageState extends State<CorrectionPage> {
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return const Card(child: Text("修正して欲しいテキスト。"));
  }
}
