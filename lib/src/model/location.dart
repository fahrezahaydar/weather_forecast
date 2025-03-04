import 'package:objectbox/objectbox.dart';

@Entity()
class Location {
  @Id()
  int id;

  String name;
  double? lat;
  double? lon;
  String altName;
  String type;

  Location({
    this.id = 0,
    required this.name,
    this.lat,
    this.lon,
    required this.altName,
    required this.type,
  });
}
