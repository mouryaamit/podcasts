// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeaturedEpisodesDataStruct extends BaseStruct {
  FeaturedEpisodesDataStruct({
    String? banner,
    String? title,
    String? slug,
    List<String>? tags,
    String? month,
    String? duration,
    List<ExpertsStruct>? guestExperts,
    List<ExpertsStruct>? indexExperts,
    String? youtubeShareLink,
    bool? featured,
    String? subtext,
  })  : _banner = banner,
        _title = title,
        _slug = slug,
        _tags = tags,
        _month = month,
        _duration = duration,
        _guestExperts = guestExperts,
        _indexExperts = indexExperts,
        _youtubeShareLink = youtubeShareLink,
        _featured = featured,
        _subtext = subtext;

  // "banner" field.
  String? _banner;
  String get banner => _banner ?? '';
  set banner(String? val) => _banner = val;

  bool hasBanner() => _banner != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  set tags(List<String>? val) => _tags = val;

  void updateTags(Function(List<String>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  set month(String? val) => _month = val;

  bool hasMonth() => _month != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  set duration(String? val) => _duration = val;

  bool hasDuration() => _duration != null;

  // "guestExperts" field.
  List<ExpertsStruct>? _guestExperts;
  List<ExpertsStruct> get guestExperts => _guestExperts ?? const [];
  set guestExperts(List<ExpertsStruct>? val) => _guestExperts = val;

  void updateGuestExperts(Function(List<ExpertsStruct>) updateFn) {
    updateFn(_guestExperts ??= []);
  }

  bool hasGuestExperts() => _guestExperts != null;

  // "indexExperts" field.
  List<ExpertsStruct>? _indexExperts;
  List<ExpertsStruct> get indexExperts => _indexExperts ?? const [];
  set indexExperts(List<ExpertsStruct>? val) => _indexExperts = val;

  void updateIndexExperts(Function(List<ExpertsStruct>) updateFn) {
    updateFn(_indexExperts ??= []);
  }

  bool hasIndexExperts() => _indexExperts != null;

  // "youtubeShareLink" field.
  String? _youtubeShareLink;
  String get youtubeShareLink => _youtubeShareLink ?? '';
  set youtubeShareLink(String? val) => _youtubeShareLink = val;

  bool hasYoutubeShareLink() => _youtubeShareLink != null;

  // "featured" field.
  bool? _featured;
  bool get featured => _featured ?? false;
  set featured(bool? val) => _featured = val;

  bool hasFeatured() => _featured != null;

  // "subtext" field.
  String? _subtext;
  String get subtext => _subtext ?? '';
  set subtext(String? val) => _subtext = val;

  bool hasSubtext() => _subtext != null;

  static FeaturedEpisodesDataStruct fromMap(Map<String, dynamic> data) =>
      FeaturedEpisodesDataStruct(
        banner: data['banner'] as String?,
        title: data['title'] as String?,
        slug: data['slug'] as String?,
        tags: getDataList(data['tags']),
        month: data['month'] as String?,
        duration: data['duration'] as String?,
        guestExperts: getStructList(
          data['guestExperts'],
          ExpertsStruct.fromMap,
        ),
        indexExperts: getStructList(
          data['indexExperts'],
          ExpertsStruct.fromMap,
        ),
        youtubeShareLink: data['youtubeShareLink'] as String?,
        featured: data['featured'] as bool?,
        subtext: data['subtext'] as String?,
      );

  static FeaturedEpisodesDataStruct? maybeFromMap(dynamic data) => data is Map
      ? FeaturedEpisodesDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'banner': _banner,
        'title': _title,
        'slug': _slug,
        'tags': _tags,
        'month': _month,
        'duration': _duration,
        'guestExperts': _guestExperts?.map((e) => e.toMap()).toList(),
        'indexExperts': _indexExperts?.map((e) => e.toMap()).toList(),
        'youtubeShareLink': _youtubeShareLink,
        'featured': _featured,
        'subtext': _subtext,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'banner': serializeParam(
          _banner,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'slug': serializeParam(
          _slug,
          ParamType.String,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
          isList: true,
        ),
        'month': serializeParam(
          _month,
          ParamType.String,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.String,
        ),
        'guestExperts': serializeParam(
          _guestExperts,
          ParamType.DataStruct,
          isList: true,
        ),
        'indexExperts': serializeParam(
          _indexExperts,
          ParamType.DataStruct,
          isList: true,
        ),
        'youtubeShareLink': serializeParam(
          _youtubeShareLink,
          ParamType.String,
        ),
        'featured': serializeParam(
          _featured,
          ParamType.bool,
        ),
        'subtext': serializeParam(
          _subtext,
          ParamType.String,
        ),
      }.withoutNulls;

  static FeaturedEpisodesDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FeaturedEpisodesDataStruct(
        banner: deserializeParam(
          data['banner'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        slug: deserializeParam(
          data['slug'],
          ParamType.String,
          false,
        ),
        tags: deserializeParam<String>(
          data['tags'],
          ParamType.String,
          true,
        ),
        month: deserializeParam(
          data['month'],
          ParamType.String,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.String,
          false,
        ),
        guestExperts: deserializeStructParam<ExpertsStruct>(
          data['guestExperts'],
          ParamType.DataStruct,
          true,
          structBuilder: ExpertsStruct.fromSerializableMap,
        ),
        indexExperts: deserializeStructParam<ExpertsStruct>(
          data['indexExperts'],
          ParamType.DataStruct,
          true,
          structBuilder: ExpertsStruct.fromSerializableMap,
        ),
        youtubeShareLink: deserializeParam(
          data['youtubeShareLink'],
          ParamType.String,
          false,
        ),
        featured: deserializeParam(
          data['featured'],
          ParamType.bool,
          false,
        ),
        subtext: deserializeParam(
          data['subtext'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FeaturedEpisodesDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FeaturedEpisodesDataStruct &&
        banner == other.banner &&
        title == other.title &&
        slug == other.slug &&
        listEquality.equals(tags, other.tags) &&
        month == other.month &&
        duration == other.duration &&
        listEquality.equals(guestExperts, other.guestExperts) &&
        listEquality.equals(indexExperts, other.indexExperts) &&
        youtubeShareLink == other.youtubeShareLink &&
        featured == other.featured &&
        subtext == other.subtext;
  }

  @override
  int get hashCode => const ListEquality().hash([
        banner,
        title,
        slug,
        tags,
        month,
        duration,
        guestExperts,
        indexExperts,
        youtubeShareLink,
        featured,
        subtext
      ]);
}

FeaturedEpisodesDataStruct createFeaturedEpisodesDataStruct({
  String? banner,
  String? title,
  String? slug,
  String? month,
  String? duration,
  String? youtubeShareLink,
  bool? featured,
  String? subtext,
}) =>
    FeaturedEpisodesDataStruct(
      banner: banner,
      title: title,
      slug: slug,
      month: month,
      duration: duration,
      youtubeShareLink: youtubeShareLink,
      featured: featured,
      subtext: subtext,
    );
