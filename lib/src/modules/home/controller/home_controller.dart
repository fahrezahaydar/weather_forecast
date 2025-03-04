import 'package:get/get.dart';
import 'package:weather_forecast/src/model/location.dart';

import '../../../repository/objectbox_service.dart';

class HomeController extends GetxController {
  RxList<Location> loc = <Location>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    OBService.getBox<Location>();
  }

  void addLocation(Location location) {
    OBService.insert(location);
    loc.value = OBService.getAll<Location>();
  }

  void deleteLocation(int id) {
    OBService.delete<Location>(id);
    loc.value = OBService.getAll<Location>();
  }

  Location dummy = Location(
    name: "Padukuhan Sutan",
    altName: "Desa Sendang Sari",
    type: "village",
  );
}
