import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/correction/correction_home/correction_home_state.dart';

class CorrectionHomeViewModel
    extends StateNotifier<AsyncValue<CorrectionHomeState>> {
  CorrectionHomeViewModel() : super(const AsyncLoading()) {
    _fetchDashBoardData();
  }

  Future<void> _fetchDashBoardData() async {
    state = const AsyncLoading();
    final snapshots =
        await FirebaseFirestore.instance.collection('posts').limit(20).get();
    state = const AsyncData(
      CorrectionHomeState(
        correctionCount: 10,
        reviewPoint: 15,
        creditCount: 10,
      ),
    );
  }
}

final correctionHomeViewModelProvider = StateNotifierProvider.autoDispose<
    CorrectionHomeViewModel, AsyncValue<CorrectionHomeState>>(
  (ref) => CorrectionHomeViewModel(),
);
