import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

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
