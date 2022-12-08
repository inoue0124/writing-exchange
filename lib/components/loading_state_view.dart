import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingStateView extends StatelessWidget {
  const LoadingStateView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
