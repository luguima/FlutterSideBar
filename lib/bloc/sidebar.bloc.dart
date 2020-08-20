import 'package:flutter/cupertino.dart';

class SideBarBloc extends ChangeNotifier {
  bool _isDrawerOpen = false;

  change() {
    _isDrawerOpen = _isDrawerOpen ? false : true;
    notifyListeners();
  }

  isOpen() {
    return _isDrawerOpen;
  }
}
