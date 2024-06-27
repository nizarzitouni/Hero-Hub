// import 'dart:async';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../../core/constants/enums.dart';

// part 'internet_state.dart';

// class InternetCubit extends Cubit<InternetState> {
//   final Connectivity connectivity;
//   late StreamSubscription connectionStreamSubscription;

//   InternetCubit({required this.connectivity}) : super(InternetLoading()) {
//     monitorInternetConnection();
//   }

//   void monitorInternetConnection() {
//     connectionStreamSubscription = connectivity.onConnectivityChanged.listen((connectivityResult) {
//       switch (connectivityResult.first) {
//         case ConnectivityResult.wifi:
//           emit(InternetConnected(connectionType: ConnectionType.Wifi));
//           break;
//         case ConnectivityResult.mobile:
//           emit(InternetConnected(connectionType: ConnectionType.Mobile));
//           break;
//         case ConnectivityResult.none:
//           emmitInternetDisconnected();
//           break;
//         default:
//           emmitInternetDisconnected();
//           break;
//       }
//     });
//   }

//   void emmitInternetConnected(ConnectionType connectionType) {
//     emit(InternetConnected(connectionType: connectionType));
//   }

//   void emmitInternetDisconnected() {
//     emit(InternetDisconnected());
//   }

//   @override
//   Future<void> close() {
//     connectionStreamSubscription.cancel();
//     return super.close();
//   }
// }
