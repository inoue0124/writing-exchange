import 'package:flutter/material.dart';

class WritingListPage extends StatefulWidget {
  const WritingListPage({super.key});

  @override
  State<WritingListPage> createState() => _WritingListPageState();
}

class _WritingListPageState extends State<WritingListPage> {
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _homeController,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Text(
            'Item $index',
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        thickness: 1,
      ),
      itemCount: 50,
    );
  }
}
