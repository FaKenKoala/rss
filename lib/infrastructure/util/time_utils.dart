import 'package:fpdart/fpdart.dart';

class TimeUtils {
  static String durationTime(Duration? duration) {
    return optionOf(duration)
        .map((t) => t.inSeconds)
        .map(intTime)
        .getOrElse(() => '--');
  }

  static String intTime(int? second) {
    return optionOf(second).map((t) {
      String minute = (t ~/ 60).toString().padLeft(2,'0');
      String second = (t % 60).toString().padLeft(2,'0');
      return '$minute:$second';
    }).getOrElse(() => '--');
  }
}
