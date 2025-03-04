import 'package:path_provider/path_provider.dart';
import 'package:weather_forecast/objectbox.g.dart';

class OBService{

  late final Store _store;
  static final OBService _instance = OBService._internal();

  OBService._internal();

  static Future<OBService> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _instance._store = await openStore(directory: dir.path);
    return _instance;
  }

  static Box<T> getBox<T>() => _instance._store.box<T>();

  static int insert<T>(T item) => getBox<T>().put(item);

  static List<T> getAll<T>() => getBox<T>().getAll();

  static T? getById<T>(int id) => getBox<T>().get(id);

  static bool delete<T>(int id) => getBox<T>().remove(id);

  static void deleteAll<T>() => getBox<T>().removeAll();

  static void update<T>(T item) => getBox<T>().put(item);
}
