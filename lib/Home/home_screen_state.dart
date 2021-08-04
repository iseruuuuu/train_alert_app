import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:train_alert_app/alert/alert_screen.dart';

part 'home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default('') String LineID,
    @Default('') String TwiterID,
    @Default('') String InstagramID,
    @Default('') String FaceBookID,
  }) = _HomeScreenState;
}

class HomeScreenController extends StateNotifier<HomeScreenState> with LocatorMixin {
  HomeScreenController({
    required this.context,
  }) : super (const HomeScreenState());

  final BuildContext context;

  @override
  void initState() {
    super.initState();

  }

  void onTapTimer() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AlertScreen(),
        fullscreenDialog: true,
      ),
    );
  }

}
