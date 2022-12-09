import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/pages/profile/profile_top/profile_top_state.dart';

class ProfileTopViewModel extends StateNotifier<ProfileTopState> {
  ProfileTopViewModel() : super(const ProfileTopState()) {
    _fetchInitialData();
  }

  Future<void> _fetchInitialData() async {}
}

final profileTopViewModelProvider =
    StateNotifierProvider.autoDispose<ProfileTopViewModel, ProfileTopState>(
  (ref) => ProfileTopViewModel(),
);
