import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isSelected = prefs.getBool('ff_isSelected') ?? _isSelected;
    });
    _safeInit(() {
      _exploreEpisodesResponse =
          prefs.getStringList('ff_exploreEpisodesResponse')?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _exploreEpisodesResponse;
    });
    _safeInit(() {
      _HighlightsResponse =
          prefs.getStringList('ff_HighlightsResponse')?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _HighlightsResponse;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_episodeDetails')) {
        try {
          _episodeDetails =
              jsonDecode(prefs.getString('ff_episodeDetails') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _videosResponse = prefs.getStringList('ff_videosResponse')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _videosResponse;
    });
    _safeInit(() {
      _featuredEpisodesResponse =
          prefs.getStringList('ff_featuredEpisodesResponse')?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _featuredEpisodesResponse;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isSelected = false;
  bool get isSelected => _isSelected;
  set isSelected(bool value) {
    _isSelected = value;
    prefs.setBool('ff_isSelected', value);
  }

  List<dynamic> _exploreEpisodesResponse = [];
  List<dynamic> get exploreEpisodesResponse => _exploreEpisodesResponse;
  set exploreEpisodesResponse(List<dynamic> value) {
    _exploreEpisodesResponse = value;
    prefs.setStringList(
        'ff_exploreEpisodesResponse', value.map((x) => jsonEncode(x)).toList());
  }

  void addToExploreEpisodesResponse(dynamic value) {
    exploreEpisodesResponse.add(value);
    prefs.setStringList('ff_exploreEpisodesResponse',
        _exploreEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }

  void removeFromExploreEpisodesResponse(dynamic value) {
    exploreEpisodesResponse.remove(value);
    prefs.setStringList('ff_exploreEpisodesResponse',
        _exploreEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromExploreEpisodesResponse(int index) {
    exploreEpisodesResponse.removeAt(index);
    prefs.setStringList('ff_exploreEpisodesResponse',
        _exploreEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }

  void updateExploreEpisodesResponseAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    exploreEpisodesResponse[index] = updateFn(_exploreEpisodesResponse[index]);
    prefs.setStringList('ff_exploreEpisodesResponse',
        _exploreEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInExploreEpisodesResponse(int index, dynamic value) {
    exploreEpisodesResponse.insert(index, value);
    prefs.setStringList('ff_exploreEpisodesResponse',
        _exploreEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _HighlightsResponse = [];
  List<dynamic> get HighlightsResponse => _HighlightsResponse;
  set HighlightsResponse(List<dynamic> value) {
    _HighlightsResponse = value;
    prefs.setStringList(
        'ff_HighlightsResponse', value.map((x) => jsonEncode(x)).toList());
  }

  void addToHighlightsResponse(dynamic value) {
    HighlightsResponse.add(value);
    prefs.setStringList('ff_HighlightsResponse',
        _HighlightsResponse.map((x) => jsonEncode(x)).toList());
  }

  void removeFromHighlightsResponse(dynamic value) {
    HighlightsResponse.remove(value);
    prefs.setStringList('ff_HighlightsResponse',
        _HighlightsResponse.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromHighlightsResponse(int index) {
    HighlightsResponse.removeAt(index);
    prefs.setStringList('ff_HighlightsResponse',
        _HighlightsResponse.map((x) => jsonEncode(x)).toList());
  }

  void updateHighlightsResponseAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    HighlightsResponse[index] = updateFn(_HighlightsResponse[index]);
    prefs.setStringList('ff_HighlightsResponse',
        _HighlightsResponse.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInHighlightsResponse(int index, dynamic value) {
    HighlightsResponse.insert(index, value);
    prefs.setStringList('ff_HighlightsResponse',
        _HighlightsResponse.map((x) => jsonEncode(x)).toList());
  }

  dynamic _episodeDetails;
  dynamic get episodeDetails => _episodeDetails;
  set episodeDetails(dynamic value) {
    _episodeDetails = value;
    prefs.setString('ff_episodeDetails', jsonEncode(value));
  }

  List<dynamic> _videosResponse = [];
  List<dynamic> get videosResponse => _videosResponse;
  set videosResponse(List<dynamic> value) {
    _videosResponse = value;
    prefs.setStringList(
        'ff_videosResponse', value.map((x) => jsonEncode(x)).toList());
  }

  void addToVideosResponse(dynamic value) {
    videosResponse.add(value);
    prefs.setStringList('ff_videosResponse',
        _videosResponse.map((x) => jsonEncode(x)).toList());
  }

  void removeFromVideosResponse(dynamic value) {
    videosResponse.remove(value);
    prefs.setStringList('ff_videosResponse',
        _videosResponse.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromVideosResponse(int index) {
    videosResponse.removeAt(index);
    prefs.setStringList('ff_videosResponse',
        _videosResponse.map((x) => jsonEncode(x)).toList());
  }

  void updateVideosResponseAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    videosResponse[index] = updateFn(_videosResponse[index]);
    prefs.setStringList('ff_videosResponse',
        _videosResponse.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInVideosResponse(int index, dynamic value) {
    videosResponse.insert(index, value);
    prefs.setStringList('ff_videosResponse',
        _videosResponse.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _featuredEpisodesResponse = [];
  List<dynamic> get featuredEpisodesResponse => _featuredEpisodesResponse;
  set featuredEpisodesResponse(List<dynamic> value) {
    _featuredEpisodesResponse = value;
    prefs.setStringList('ff_featuredEpisodesResponse',
        value.map((x) => jsonEncode(x)).toList());
  }

  void addToFeaturedEpisodesResponse(dynamic value) {
    featuredEpisodesResponse.add(value);
    prefs.setStringList('ff_featuredEpisodesResponse',
        _featuredEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }

  void removeFromFeaturedEpisodesResponse(dynamic value) {
    featuredEpisodesResponse.remove(value);
    prefs.setStringList('ff_featuredEpisodesResponse',
        _featuredEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromFeaturedEpisodesResponse(int index) {
    featuredEpisodesResponse.removeAt(index);
    prefs.setStringList('ff_featuredEpisodesResponse',
        _featuredEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }

  void updateFeaturedEpisodesResponseAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    featuredEpisodesResponse[index] =
        updateFn(_featuredEpisodesResponse[index]);
    prefs.setStringList('ff_featuredEpisodesResponse',
        _featuredEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInFeaturedEpisodesResponse(int index, dynamic value) {
    featuredEpisodesResponse.insert(index, value);
    prefs.setStringList('ff_featuredEpisodesResponse',
        _featuredEpisodesResponse.map((x) => jsonEncode(x)).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
