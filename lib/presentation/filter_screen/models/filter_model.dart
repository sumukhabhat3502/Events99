import 'package:get/get.dart';
import 'filter_item_model.dart';

class FilterModel {
  Rx<List<FilterItemModel>> filterItemList =
      Rx(List.generate(3, (index) => FilterItemModel()));
}
