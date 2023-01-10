// dao/person_dao.dart

import 'package:floor/floor.dart';
import 'package:flutterpreparation/floorAsRoomDatabase/model/Student.dart';

@dao
abstract class StudentDao {
  @Query('SELECT * FROM Person')
  Future<List<Student>> findAllPersons();

  @Query('SELECT * FROM Person WHERE id = :id')
  Stream<Student?> findPersonById(int id);

  @insert
  Future<void> insertPerson(Student person);
}