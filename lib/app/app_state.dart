import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writing_exchange/app/bottom_nav/tab_helper.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(TabItem.writing) TabItem currentTabIndex,
    @Default(true) bool isOnboarding,
  }) = _AppState;
}
