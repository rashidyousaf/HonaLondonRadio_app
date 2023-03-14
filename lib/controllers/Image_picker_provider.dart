import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:honalondon_radio/consts/const.dart';
// import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImagePcikerProvider extends ChangeNotifier {
  File? _pimg;
  File? _bgimg;
  String _imageUrl = '';

  File? get pimg => _pimg;
  File? get bgimg => _bgimg;
  String get imageUrl => _imageUrl;

  Future<void> pickpImage1() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final img = File(image.path);

    final uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
    final referenceRoot = FirebaseStorage.instance.ref();
    final referenceDirImages = referenceRoot.child('images');
    final referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(image.path));
      _imageUrl = await referenceImageToUpload.getDownloadURL();
      notifyListeners();
      print('eventurl:${_imageUrl}');
    } catch (error) {
      // handle error
    }

    _pimg = img;
    notifyListeners();
  }

  Future<void> pickbgImage() async {
    final image2 = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image2 == null) return;
    final img2 = File(image2.path);

    _bgimg = img2;

    notifyListeners();
  }
}
