import 'package:get/get.dart';
import 'list_item_model.dart';
import 'listshare_item_model.dart';

class CategoryModel {
  Rx<List<ListItemModel>> listItemList =
      Rx(List.generate(3, (index) => ListItemModel()));

  Rx<List<ListshareItemModel>> listshareItemList =
      Rx(List.generate(3, (index) => ListshareItemModel()));
}
