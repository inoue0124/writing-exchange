import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:writing_exchange/app/utils/pref_keys.dart';
import 'package:writing_exchange/app/utils/providers.dart';

abstract class AppFlagRepositoryInterface {
  Future<void> updateIsFinishedOnboarding(bool value);
  Future<bool> getIsFinishedOnboarding();
}

class AppFlagRepository implements AppFlagRepositoryInterface {
  final Ref _ref;
  const AppFlagRepository(this._ref);

  @override
  Future<bool> getIsFinishedOnboarding() async {
    SharedPreferences prefs = await _ref.read(sharedPreferenceProvider.future);
    return prefs.getBool(PrefKeys.isFinishedOnboarding) ?? false;
  }

  @override
  Future<void> updateIsFinishedOnboarding(bool value) async {
    SharedPreferences prefs = await _ref.read(sharedPreferenceProvider.future);
    prefs.setBool(PrefKeys.isFinishedOnboarding, value);
  }
}

final appFlagRepositoryProvider = Provider<AppFlagRepositoryInterface>(
  (ref) => AppFlagRepository(ref),
);
