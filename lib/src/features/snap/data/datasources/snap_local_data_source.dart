import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/constants/storage_keys.dart';
import '../models/media_asset_model.dart';

abstract class SnapLocalDataSource {
  Future<void> saveMedia(MediaAssetModel media);
  Future<List<MediaAssetModel>> getPendingMedia();
  Future<void> updateMediaStatus(String id, String status, {double? progress});
  Future<void> deleteMedia(String id);
  Future<void> clearSyncedMedia();
}

@LazySingleton(as: SnapLocalDataSource)
class SnapLocalDataSourceImpl implements SnapLocalDataSource {
  final SharedPreferences sharedPreferences;

  SnapLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> saveMedia(MediaAssetModel media) async {
    final list = await _getRawList();
    list.add(media);
    await _saveList(list);
  }

  @override
  Future<List<MediaAssetModel>> getPendingMedia() async {
    return await _getRawList();
  }

  @override
  Future<void> updateMediaStatus(
    String id,
    String status, {
    double? progress,
  }) async {
    final list = await _getRawList();
    final index = list.indexWhere((m) => m.id == id);
    if (index != -1) {
      list[index] = list[index].copyWith(
        status: status,
        progress: progress ?? list[index].progress,
      );
      await _saveList(list);
    }
  }

  @override
  Future<void> deleteMedia(String id) async {
    final list = await _getRawList();
    list.removeWhere((m) => m.id == id);
    await _saveList(list);
  }

  @override
  Future<void> clearSyncedMedia() async {
    final list = await _getRawList();
    list.removeWhere((m) => m.status == 'success');
    await _saveList(list);
  }

  Future<List<MediaAssetModel>> _getRawList() async {
    final jsonString = sharedPreferences.getString(StorageKeys.pendingSnaps);
    if (jsonString != null) {
      final List<dynamic> decoded = json.decode(jsonString);
      return decoded.map((item) => MediaAssetModel.fromJson(item)).toList();
    }
    return [];
  }

  Future<void> _saveList(List<MediaAssetModel> list) async {
    final jsonString = json.encode(list.map((m) => m.toJson()).toList());
    await sharedPreferences.setString(StorageKeys.pendingSnaps, jsonString);
  }
}
