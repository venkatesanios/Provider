The Sample and Simple Provider using in flutter 



Provider Class
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

//Create Provider class
class NameProvider extends ChangeNotifier {
  var name = '';

  nameChange(String changeValue) {
    name = changeValue;
    notifyListeners();
  }
}

Main.dart:

use Multi Provider
 MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => NameProvider()))
      ],
      child: const MyApp(),
    ),

first Page:
import 'package:git1/Provider/name_provider.dart';
import 'package:provider/provider.dart';

 NameProvider firstnameProvider =
        Provider.of<NameProvider>(context, listen: true);
    firstName.text = firstnameProvider.name;
  
  ![Screenshot_1686372173](https://github.com/venkatesanios/Provider/assets/45752506/84c4056a-f5ea-4eb4-95be-6bfd79b89e3b)

  Second Page
import 'package:git1/Provider/name_provider.dart';
import 'package:provider/provider.dart';
  
NameProvider secondnameProvider =
        Provider.of<NameProvider>(context, listen: true);
secondName.text = secondnameProvider.name; 
  
  ![Screenshot_1686372182](https://github.com/venkatesanios/Provider/assets/45752506/e4779ff8-fd61-4b3b-8506-d11b7ae190eb)
