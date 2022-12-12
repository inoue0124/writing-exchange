import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MultipleImageUpload extends StatefulWidget {
  const MultipleImageUpload({super.key});

  @override
  State<StatefulWidget> createState() => MultipleImageUploadState();
}

class MultipleImageUploadState extends State<MultipleImageUpload> {
  final ImagePicker _picker = ImagePicker();
  final List<XFile> _images = [];

  void deleteImageAt(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: 8,
          runSpacing: 8,
          children: [
            ..._images.asMap().entries.map(
              (entry) {
                int index = entry.key;
                XFile image = entry.value;
                return Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 16)
                      : const EdgeInsets.all(0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 8, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            File(image.path),
                            fit: BoxFit.cover,
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                      ),
                      Positioned(
                        right: -12,
                        top: 2,
                        child: ElevatedButton(
                          onPressed: () => deleteImageAt(index),
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Theme.of(context).backgroundColor,
                            foregroundColor: Theme.of(context).disabledColor,
                            elevation: 0,
                          ),
                          child: const ClipOval(
                            child: Icon(Icons.close_rounded),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(_images.isEmpty ? 16 : 0, 16, 16, 16),
              child: InkWell(
                onTap: () async {
                  final image =
                      await _picker.pickImage(source: ImageSource.gallery);
                  if (image != null) setState(() => _images.add(image));
                },
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  color: Theme.of(context).primaryColor,
                  dashPattern: const [6.0, 3.0],
                  strokeWidth: 1.0,
                  radius: const Radius.circular(8),
                  child: Container(
                    alignment: Alignment.center,
                    width: 100.0,
                    height: 100.0,
                    child: Icon(
                      Icons.add_a_photo,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
