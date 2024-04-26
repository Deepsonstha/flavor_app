// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Endpoints { items, details }

class FlavorConfig {
  String? appTitle;
  Map<Endpoints, String>? apiEndpoint;
  String? imageLocation;
  ThemeData? theme;

  FlavorConfig({
    this.appTitle,
    this.apiEndpoint,
    this.imageLocation,
    this.theme,
  }) {
    theme = ThemeData.light();
  }

  FlavorConfig copyWith({
    String? appTitle,
    Map<Endpoints, String>? apiEndpoint,
    String? imageLocation,
    ThemeData? theme,
  }) {
    return FlavorConfig(
      appTitle: appTitle ?? this.appTitle,
      apiEndpoint: apiEndpoint ?? this.apiEndpoint,
      imageLocation: imageLocation ?? this.imageLocation,
      theme: theme ?? this.theme,
    );
  }

  @override
  String toString() {
    return 'FlavorConfig(appTitle: $appTitle, apiEndpoint: $apiEndpoint, imageLocation: $imageLocation, theme: $theme)';
  }

  @override
  bool operator ==(covariant FlavorConfig other) {
    if (identical(this, other)) return true;

    return other.appTitle == appTitle && mapEquals(other.apiEndpoint, apiEndpoint) && other.imageLocation == imageLocation && other.theme == theme;
  }

  @override
  int get hashCode {
    return appTitle.hashCode ^ apiEndpoint.hashCode ^ imageLocation.hashCode ^ theme.hashCode;
  }
}
