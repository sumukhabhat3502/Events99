import 'package:eventss/core/app_export.dart';
import 'package:eventss/presentation/category_page/models/category_model.dart';

class CategoryController extends GetxController {
  CategoryController(this.categoryModelObj);

  Rx<CategoryModel> categoryModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
