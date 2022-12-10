import 'package:freezed_annotation/freezed_annotation.dart';

part 'walkthrough_state.freezed.dart';

@freezed
class WalkthroughState with _$WalkthroughState {
  const factory WalkthroughState({
    @Default(0) int currentPageIndex,
    @Default(false) bool isLastpage,
  }) = _WalkthroughState;
}
