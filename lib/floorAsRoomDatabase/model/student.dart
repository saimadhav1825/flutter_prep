
import 'package:floor/floor.dart';

@entity
class Student {
  @primaryKey
  final int id;

  final String name;

  Student(this.id, this.name);
}
