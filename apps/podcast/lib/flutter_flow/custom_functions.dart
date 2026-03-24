import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String? getBuildTimestamp() {
  const value = String.fromEnvironment(
    'BUILD_TIMESTAMP',
    defaultValue: 'local',
  );
  return value;
}

String? getBuildBranch() {
  const value = String.fromEnvironment(
    'BUILD_BRANCH',
    defaultValue: 'local',
  );
  return value;
}

String? getBuildCommit() {
  const value = String.fromEnvironment(
    'BUILD_COMMIT',
    defaultValue: 'local',
  );
  return value;
}

String? getBuildEnv() {
  const value = String.fromEnvironment(
    'BUILD_ENV',
    defaultValue: 'DEV',
  );
  return value;
}

String formateFeaturedExperts(
  List<dynamic>? guestExperts,
  List<dynamic>? indexExperts,
  String duration,
) {
  try {
    final List<String> names = [];
    if (guestExperts != null) {
      names.addAll(guestExperts
          .map((e) => (e['name'] ?? '').toString().trim())
          .where((name) => name.isNotEmpty));
    }
    if (indexExperts != null) {
      names.addAll(indexExperts
          .map((e) => (e['name'] ?? '').toString().trim())
          .where((name) => name.isNotEmpty));
    }
    names.add(duration);
    if (names.isEmpty) return '';
    return names.join(' • ');
  } catch (e) {
    return '';
  }
}

String formatDescription(List<String>? descriptionList) {
  if (descriptionList == null || descriptionList.isEmpty) {
    return '';
  }

  try {
    return descriptionList
        .map((e) => e.toString())
        .join('\n\n'); // paragraph spacing
  } catch (e) {
    return '';
  }
}

String combineConversations(List<String> conversations) {
  return conversations.join("\n");
}

int getLength(List<dynamic>? list) {
  if (list == null) return 0;
  return list.length;
}

String combineAIConversations(List<String> conversations) {
  if (conversations == null || conversations.isEmpty) {
    return '';
  }
  try {
    return conversations
        .map((e) => " • " + e.toString())
        .join('\n'); // paragraph spacing
  } catch (e) {
    return '';
  }
}
