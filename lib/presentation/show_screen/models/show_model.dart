import 'package:get/get.dart';
import 'show_item_model.dart';

class ShowModel {
  Rx<List<ShowItemModel>> showItemList =
      Rx(List.generate(4, (index) => ShowItemModel()));
}
