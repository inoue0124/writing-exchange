import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/pages/profile/profile_top/profile_top_state.dart';

class ProfileTopViewModel extends StateNotifier<AsyncValue<ProfileTopState>> {
  ProfileTopViewModel() : super(const AsyncLoading()) {
    _fetchInitialData();
  }

  Future<void> _fetchInitialData() async {
    state = const AsyncLoading();
  }
}

final profileTopViewModelProvider = StateNotifierProvider.autoDispose<
    ProfileTopViewModel, AsyncValue<ProfileTopState>>(
  (ref) => ProfileTopViewModel(),
);
