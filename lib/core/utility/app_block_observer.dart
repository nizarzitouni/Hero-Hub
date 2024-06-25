import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/service_locator.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    talker.info('Current State $change');
    super.onChange(bloc, change);
  }

  @override
  void onClose(BlocBase bloc) {
    talker.info('$bloc Closed!!');
    super.onClose(bloc);
  }

  @override
  void onCreate(BlocBase bloc) {
    talker.info('$bloc Created!!');
    super.onCreate(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    talker.error('onError Triggered with $bloc $error !!');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    talker.info('onEvent $bloc with $event!!');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    talker.info('onTransition $bloc with $transition!!');
    super.onTransition(bloc, transition);
  }
}
