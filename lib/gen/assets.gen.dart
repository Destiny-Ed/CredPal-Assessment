// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsPngsGen {
  const $AssetsPngsGen();

  /// File path: assets/pngs/phone_one.png
  AssetGenImage get phoneOne =>
      const AssetGenImage('assets/pngs/phone_one.png');

  /// File path: assets/pngs/phone_two.png
  AssetGenImage get phoneTwo =>
      const AssetGenImage('assets/pngs/phone_two.png');

  /// File path: assets/pngs/product_three.png
  AssetGenImage get productThree =>
      const AssetGenImage('assets/pngs/product_three.png');

  /// File path: assets/pngs/slot.png
  AssetGenImage get slot => const AssetGenImage('assets/pngs/slot.png');

  /// List of all assets
  List<AssetGenImage> get values => [phoneOne, phoneTwo, productThree, slot];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/dreamworks.svg
  String get dreamworks => 'assets/svgs/dreamworks.svg';

  /// File path: assets/svgs/hub.svg
  String get hub => 'assets/svgs/hub.svg';

  /// File path: assets/svgs/mate.svg
  String get mate => 'assets/svgs/mate.svg';

  /// File path: assets/svgs/merchant_one.svg
  String get merchantOne => 'assets/svgs/merchant_one.svg';

  /// File path: assets/svgs/merchant_two.svg
  String get merchantTwo => 'assets/svgs/merchant_two.svg';

  /// File path: assets/svgs/oga_bassey.svg
  String get ogaBassey => 'assets/svgs/oga_bassey.svg';

  /// File path: assets/svgs/okay_phone.svg
  String get okayPhone => 'assets/svgs/okay_phone.svg';

  /// File path: assets/svgs/orile.svg
  String get orile => 'assets/svgs/orile.svg';

  /// File path: assets/svgs/scan.svg
  String get scan => 'assets/svgs/scan.svg';

  /// File path: assets/svgs/search-normal.svg
  String get searchNormal => 'assets/svgs/search-normal.svg';

  /// File path: assets/svgs/slot.svg
  String get slot => 'assets/svgs/slot.svg';

  /// File path: assets/svgs/warning.svg
  String get warning => 'assets/svgs/warning.svg';

  /// List of all assets
  List<String> get values => [
    dreamworks,
    hub,
    mate,
    merchantOne,
    merchantTwo,
    ogaBassey,
    okayPhone,
    orile,
    scan,
    searchNormal,
    slot,
    warning,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsPngsGen pngs = $AssetsPngsGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
