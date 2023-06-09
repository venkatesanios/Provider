import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class NameProvider extends ChangeNotifier {
  var name = '';

  nameChange(String changeValue) {
    name = changeValue;
  }
}
