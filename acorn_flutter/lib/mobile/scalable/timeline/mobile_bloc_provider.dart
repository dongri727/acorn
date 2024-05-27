import "package:acorn_flutter/mobile/scalable/timeline/mobile_timeline.dart";
import "package:flutter/widgets.dart";


/// This [InheritedWidget] wraps the whole app, and provides access
/// to the [Timeline] object.
class BlocProviderM extends InheritedWidget {
  final TimelineM timelineM;

  const BlocProviderM(
      {super.key,
        required TimelineM t,
        required super.child,
        //TargetPlatform platform = TargetPlatform.iOS,
      })
      : timelineM = t;

  @override
  updateShouldNotify(InheritedWidget oldWidget) => true;

  /// static accessor for the [Timeline].
  /// e.g. [_MainMenuWidgetState.navigateToDistance] uses this static getter to access build the [TimelineWidget].
  static TimelineM getTimelineM(BuildContext context) {
    BlocProviderM? bp =
    context.dependOnInheritedWidgetOfExactType<BlocProviderM>();

    if (bp != null) {
      TimelineM bloc = bp.timelineM;
      return bloc;
    } else {
      throw Exception('Unable to get BlocProviderM from context');
    }
  }
}