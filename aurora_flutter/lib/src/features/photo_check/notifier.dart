import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/photo_check_model.dart';

class PhotoCheckNotifier extends StateNotifier<PhotoCheckModel> {
  PhotoCheckNotifier() : super(const PhotoCheckModel.idle());

  void checkPhoto(String path) => state = PhotoCheckModel.photo(path: path);

  void error(String? message) =>
      state = PhotoCheckModel.error(message: message);

  void idle(String? description) =>
      state = PhotoCheckModel.idle(description: description);
}
