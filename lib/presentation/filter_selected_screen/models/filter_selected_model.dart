import 'package:get/get.dart';
import 'filter_selected_item_model.dart';

class FilterSelectedModel {
  Rx<List<FilterSelectedItemModel>> filterSelectedItemList =
      Rx(List.generate(3, (index) => FilterSelectedItemModel()));
}
