import 'package:get/get.dart';

class ImagePickerController extends GetxController {
  
  var description = "".obs;
  RxString imagePath = ''.obs;
  Future getImage(ImageSource imageSource) async {
    final image = await ImagePicker().pickImage(source: imageSource);
    if (image != null) {
      imagePath.value = image.path.toString();
      print(imagePath.value);
    }
  }

  void setImageDescription(String text) {}

  void setImagePath(String imagePath) {}
}
