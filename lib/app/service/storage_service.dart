import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';
import 'package:writing_exchange/app/service/auth_service.dart';
import 'package:writing_exchange/app/utils/providers.dart';

abstract class StorageServiceInterface {
  Future<String> upload(File file);
  Future<void> delete(String fileUrl);
}

class StorageService implements StorageServiceInterface {
  StorageService(this._ref, {required AuthServiceInterface authService})
      : _authService = authService;
  final AuthServiceInterface _authService;

  final Ref _ref;

  @override
  Future<String> upload(File file) async {
    try {
      final userId = await _authService.getUserId();
      final extension = p.extension(file.path);
      final fileKey = "userData/$userId/${const Uuid().v4()}$extension";
      final uploadTask =
          await _ref.read(firebaseStorageProvider).ref(fileKey).putFile(file);
      return await uploadTask.ref.getDownloadURL();
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> delete(String fileUrl) async {
    try {
      await _ref.read(firebaseStorageProvider).refFromURL(fileUrl).delete();
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

final storageServiceProvider = Provider<StorageServiceInterface>(
  (ref) => StorageService(
    ref,
    authService: ref.read(authServiceProvider),
  ),
);
