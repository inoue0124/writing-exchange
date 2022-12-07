import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/data/repository/user_repository.dart';
import 'package:writing_exchange/pages/correction/correction_home/correction_home_state.dart';

class CorrectionHomeViewModel
    extends StateNotifier<AsyncValue<CorrectionHomeState>> {
  CorrectionHomeViewModel({
    required UserRepositoryInterface userRepository,
  })  : _userRepository = userRepository,
        super(const AsyncLoading()) {
    _fetchDashBoardData();
  }
  final UserRepositoryInterface _userRepository;

  Future<void> _fetchDashBoardData() async {
    state = const AsyncLoading();
    final user = await _userRepository.getUsersInfo();
    state = AsyncData(
      CorrectionHomeState(
        correctionCount: 10,
        reviewPoint: 15,
        creditCount: 10,
        user: user,
      ),
    );
  }
}

final correctionHomeViewModelProvider = StateNotifierProvider.autoDispose<
    CorrectionHomeViewModel, AsyncValue<CorrectionHomeState>>(
  (ref) => CorrectionHomeViewModel(
    userRepository: ref.watch(userRepositoryProvider),
  ),
);
