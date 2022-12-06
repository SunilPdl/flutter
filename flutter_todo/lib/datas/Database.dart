import 'package:hive_flutter/hive_flutter.dart';

class todoDatabase {
  List todoLists = [];

  //reference our box->mybox
  final _mybox = Hive.box('mybox');

  //run this method if this is the first time ever opening this app
  void createInitialData() {
    todoLists = [
      ['Learn flutter', false],
      ['Learn Hive_flutter', false]
    ];
  }

  //load the data from Database
  void loadData() {
    todoLists = _mybox.get('TODOLISTS');
  }

  //update the Database
  void updateDatabase() {
    _mybox.put('TODOLISTS', todoLists);
  }
}
