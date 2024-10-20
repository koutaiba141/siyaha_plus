// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:siyaha_plus_mobile/controllers/SuggestedInfoController.dart';
import 'package:siyaha_plus_mobile/routes/AppRoute.dart';
import 'package:image_picker/image_picker.dart';

class SuggestedInfoPage extends GetView<SuggestedInfoController> {
  const SuggestedInfoPage({super.key});
  final double LabelFontSize = 15;
  final double LabelPadding = 20;
  final double SixedBoxHeight = 20;
  @override
  Widget build(BuildContext context) {
    final SuggestedInfoController controller =
        Get.put(SuggestedInfoController());

    final ImagePicker picker = ImagePicker();

    // Function to pick an image from the gallery
    Future<void> pickImage() async {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        controller.SuggestedProfile.value = await image.readAsBytes();
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Setting up profile",
            selectionColor: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Profile text
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      const Text(
                        "Add a profile picture",
                        selectionColor: Colors.blue,
                        style: TextStyle(fontFamily: "Caveat", fontSize: 20),
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Profile picture
                      GestureDetector(
                        onTap: pickImage,
                        child: Obx(() {
                          return ClipOval(
                            child: controller.SuggestedProfile.value != null
                                ? Image.memory(
                                    controller.SuggestedProfile.value!,
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  )
                                : SvgPicture.asset(
                                    'images/ProfileImage.svg',
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                          );
                        }),
                      ),
                      // Company name
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Company name',
                            labelStyle: TextStyle(fontSize: LabelFontSize),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: LabelPadding)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a company name';
                          }
                          return null;
                        },
                        controller: controller.SuggestedName,
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      //Company description
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Company description',
                            labelStyle: TextStyle(fontSize: LabelFontSize),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: LabelPadding)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a company description';
                          }
                          return null;
                        },
                        controller: controller.SuggestedDescription,
                      ),
                      SizedBox(
                        height: SixedBoxHeight * 2,
                      ),

                      // Company type
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Store type',
                          labelStyle: TextStyle(fontSize: LabelFontSize),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: LabelPadding, horizontal: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        items: <String>[
                          'Restaurant',
                          'Store',
                          'entertainment venues'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          controller.SuggestedType.text = newValue!;
                        },
                      ),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Company number
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Company phone number',
                              labelStyle: TextStyle(fontSize: LabelFontSize),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: LabelPadding,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a company phone number';
                            }
                            return null;
                          },
                          controller: controller.SuggestedNumber),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Company GPS location
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Company GPS location',
                              labelStyle: TextStyle(fontSize: LabelFontSize),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: LabelPadding,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a company GPS location';
                            }
                            return null;
                          },
                          controller: controller.SuggestedLocation),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Facebook link
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Facebook link',
                              labelStyle: TextStyle(fontSize: LabelFontSize),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: LabelPadding,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a Facebook link';
                            }
                            return null;
                          },
                          controller: controller.SuggestedFacebook),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Instagram link
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Instagram link',
                              labelStyle: TextStyle(fontSize: LabelFontSize),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: LabelPadding,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an Instagram link';
                            }
                            return null;
                          },
                          controller: controller.SuggestedInstagram),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Tiktok link
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Tiktok link',
                              labelStyle: TextStyle(fontSize: LabelFontSize),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: LabelPadding,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a Tiktok link';
                            }
                            return null;
                          },
                          controller: controller.SuggestedTiktok),
                      SizedBox(
                        height: SixedBoxHeight,
                      ),
                      // Submit button
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.grey,
                              minimumSize: const Size.fromHeight(50)),
                          onPressed: () {
                            controller.SaveSuggestedInfo();
                            Get.toNamed(AppRoute.SuggestedProfilePage);
                          },
                          child: const Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          )),
                    ]))));
  }
}
