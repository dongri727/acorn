import "package:flutter/widgets.dart";
import 'timeline.dart';

/// This [InheritedWidget] wraps the whole app, and provides access
/// to the [Timeline] object.
class BlocProvider extends InheritedWidget {
  final Timeline timeline;

  const BlocProvider(
      {Key? key,
        required Timeline t,
        required Widget child,
        //TargetPlatform platform = TargetPlatform.iOS,
      })
      : timeline = t,
        super(key: key, child: child);

  @override
  updateShouldNotify(InheritedWidget oldWidget) => true;

  /// static accessor for the [Timeline].
  /// e.g. [_MainMenuWidgetState.navigateToDistance] uses this static getter to access build the [TimelineWidget].
  static Timeline getTimeline(BuildContext context) {
    BlocProvider? bp =
    context.dependOnInheritedWidgetOfExactType<BlocProvider>();

    if (bp != null) {
    Timeline bloc = bp.timeline;
    return bloc;
    } else {
      throw Exception('Unable to get BlocProvider from context');
    }
  }
}