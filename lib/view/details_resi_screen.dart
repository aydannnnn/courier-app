import 'dart:io';
import 'package:courier_app/controllers/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailsResiScreen extends StatefulWidget {
  static const routeName = "/details_resi_screen";

  const DetailsResiScreen({Key? key}) : super(key: key);

  @override
  State<DetailsResiScreen> createState() => _DetailsResiScreen();
}

class _DetailsResiScreen extends State<DetailsResiScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? description = prefs.getString('description');
    String? imagePath = prefs.getString('imagePath');
    if (description != null) {
      descriptionController.text = description;
      controller.setImageDescription(description);
    }
    if (imagePath != null) {
      controller.setImagePath(imagePath);
    }
  }

  _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('description', descriptionController.text);
    await prefs.setString('imagePath', controller.imagePath.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 200, // Adjust the size as needed
                  height: 200, // Adjust the size as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors
                        .grey[300], // Adjust the background color as needed
                    image: controller.imagePath.isNotEmpty
                        ? DecorationImage(
                            image: FileImage(File(controller.imagePath.value)),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                controller.description.isNotEmpty
                    ? 'Keterangan foto: ${controller.description.value}'
                    : 'Belum ada keterangan',
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Deskripsi',
                    hintText: 'Masukkan deskripsi foto...',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      controller
                          .setImageDescription(descriptionController.text);
                      _saveData();
                    },
                    child: const Text("Simpan"),
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: () {
                      controller.getImage(ImageSource.camera);
                    },
                    child: const Text("Unggah Bukti Penerimaan Paket"),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
