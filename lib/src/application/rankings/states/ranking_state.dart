import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/rankings/entities/ranking_result.dart';

part 'ranking_state.freezed.dart';

@freezed
class RankingState with _$RankingState {
  const factory RankingState({
    @Default(false) bool isInitial,
    @Default(false) bool isLoading,
    @Default(AsyncValue<RankingResult>.loading())
    AsyncValue<RankingResult> result,
  }) = _RankingState;

  factory RankingState.initial() => const RankingState(isInitial: true);

  factory RankingState.loading() => const RankingState(isLoading: true);

  factory RankingState.loaded(RankingResult result) =>
      RankingState(result: AsyncValue.data(result));

  factory RankingState.error(Object error, StackTrace stackTrace) =>
      RankingState(result: AsyncValue.error(error, stackTrace));
}
