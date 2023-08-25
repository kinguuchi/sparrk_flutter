import 'package:flutter_riverpod/flutter_riverpod.dart';

final navIndexProvider = StateNotifierProvider<NavIndexProvider, int>((ref) {
  return NavIndexProvider();
});

class NavIndexProvider extends StateNotifier<int> {
  NavIndexProvider() : super(0);

  void setNavIndex(int navIndex) {
    state = navIndex;
  }
}


