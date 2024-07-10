import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'soft_boiled_widget.dart' show SoftBoiledWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SoftBoiledModel extends FlutterFlowModel<SoftBoiledWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 360000;
  int timerMilliseconds = 360000;
  String timerValue = StopWatchTimer.getDisplayTime(
    360000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
