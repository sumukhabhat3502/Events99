import 'package:get/get.dart';
import 'listtime_item_model.dart';
import 'listtime1_item_model.dart';

class HomeModel {
  Rx<List<ListtimeItemModel>> listtimeItemList =
      Rx(List.generate(4, (index) => ListtimeItemModel()));

  Rx<List<Listtime1ItemModel>> listtime1ItemList =
      Rx(List.generate(4, (index) => Listtime1ItemModel()));
}
