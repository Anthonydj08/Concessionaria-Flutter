import 'package:floor/floor.dart';

class EntityBase {
  @PrimaryKey(autoGenerate: true)
  int? id;

  final String createdAt;
  final String updatedAt;
  
  EntityBase(this.id, this.createdAt, this.updatedAt);
}