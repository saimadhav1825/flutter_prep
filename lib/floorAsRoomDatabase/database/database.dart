import 'package:floor/floor.dart';
import 'package:flutterpreparation/floorAsRoomDatabase/dao/student_dao.dart';

import '../model/Student.dart';

@Database(version: 1, entities: [Student])
abstract class AppDatabase extends FloorDatabase {
  StudentDao get studentDao;
}
