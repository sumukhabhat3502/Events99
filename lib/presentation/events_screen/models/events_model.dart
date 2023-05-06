import 'package:get/get.dart';
import 'slidablelistbac_item_model.dart';

class EventsModel {
  Rx<List<SlidablelistbacItemModel>> slidablelistbacItemList =
      Rx(List.generate(4, (index) => SlidablelistbacItemModel()));
}
