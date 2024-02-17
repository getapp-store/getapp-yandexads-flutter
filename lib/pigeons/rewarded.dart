// Autogenerated from Pigeon (v17.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import, no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

PlatformException _createConnectionError(String channelName) {
  return PlatformException(
    code: 'channel-error',
    message: 'Unable to establish connection on channel: "$channelName".',
  );
}

List<Object?> wrapResponse({Object? result, PlatformException? error, bool empty = false}) {
  if (empty) {
    return <Object?>[];
  }
  if (error == null) {
    return <Object?>[result];
  }
  return <Object?>[error.code, error.message, error.details];
}

class RewardedError {
  RewardedError({
    required this.code,
    required this.description,
  });

  int code;

  String description;

  Object encode() {
    return <Object?>[
      code,
      description,
    ];
  }

  static RewardedError decode(Object result) {
    result as List<Object?>;
    return RewardedError(
      code: result[0]! as int,
      description: result[1]! as String,
    );
  }
}

class RewardedImpression {
  RewardedImpression({
    required this.data,
  });

  String data;

  Object encode() {
    return <Object?>[
      data,
    ];
  }

  static RewardedImpression decode(Object result) {
    result as List<Object?>;
    return RewardedImpression(
      data: result[0]! as String,
    );
  }
}

class RewardedEvent {
  RewardedEvent({
    required this.amount,
    required this.type,
  });

  int amount;

  String type;

  Object encode() {
    return <Object?>[
      amount,
      type,
    ];
  }

  static RewardedEvent decode(Object result) {
    result as List<Object?>;
    return RewardedEvent(
      amount: result[0]! as int,
      type: result[1]! as String,
    );
  }
}

class YandexAdsRewarded {
  /// Constructor for [YandexAdsRewarded].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  YandexAdsRewarded({BinaryMessenger? binaryMessenger})
      : __pigeon_binaryMessenger = binaryMessenger;
  final BinaryMessenger? __pigeon_binaryMessenger;

  static const MessageCodec<Object?> pigeonChannelCodec = StandardMessageCodec();

  Future<void> make(String id) async {
    const String __pigeon_channelName = 'dev.flutter.pigeon.flutter_yandex_ads.YandexAdsRewarded.make';
    final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[id]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> load(String id) async {
    const String __pigeon_channelName = 'dev.flutter.pigeon.flutter_yandex_ads.YandexAdsRewarded.load';
    final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[id]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> show(String id) async {
    const String __pigeon_channelName = 'dev.flutter.pigeon.flutter_yandex_ads.YandexAdsRewarded.show';
    final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[id]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }
}

class _FlutterYandexAdsRewardedCodec extends StandardMessageCodec {
  const _FlutterYandexAdsRewardedCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is RewardedError) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is RewardedEvent) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is RewardedImpression) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return RewardedError.decode(readValue(buffer)!);
      case 129: 
        return RewardedEvent.decode(readValue(buffer)!);
      case 130: 
        return RewardedImpression.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class FlutterYandexAdsRewarded {
  static const MessageCodec<Object?> pigeonChannelCodec = _FlutterYandexAdsRewardedCodec();

  void onAdLoaded(String id);

  void onAdFailedToLoad(String id, RewardedError err);

  void onAdFailedToShow(String id, RewardedError err);

  void onAdShown(String id);

  void onAdDismissed(String id);

  void onAdClicked(String id);

  void onImpression(String id, RewardedImpression data);

  void onRewarded(String id, RewardedEvent reward);

  static void setup(FlutterYandexAdsRewarded? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdLoaded', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdLoaded was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_id = (args[0] as String?);
          assert(arg_id != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdLoaded was null, expected non-null String.');
          try {
            api.onAdLoaded(arg_id!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdFailedToLoad', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdFailedToLoad was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_id = (args[0] as String?);
          assert(arg_id != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdFailedToLoad was null, expected non-null String.');
          final RewardedError? arg_err = (args[1] as RewardedError?);
          assert(arg_err != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdFailedToLoad was null, expected non-null RewardedError.');
          try {
            api.onAdFailedToLoad(arg_id!, arg_err!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdFailedToShow', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdFailedToShow was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_id = (args[0] as String?);
          assert(arg_id != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdFailedToShow was null, expected non-null String.');
          final RewardedError? arg_err = (args[1] as RewardedError?);
          assert(arg_err != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdFailedToShow was null, expected non-null RewardedError.');
          try {
            api.onAdFailedToShow(arg_id!, arg_err!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdShown', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdShown was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_id = (args[0] as String?);
          assert(arg_id != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdShown was null, expected non-null String.');
          try {
            api.onAdShown(arg_id!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdDismissed', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdDismissed was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_id = (args[0] as String?);
          assert(arg_id != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdDismissed was null, expected non-null String.');
          try {
            api.onAdDismissed(arg_id!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdClicked', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdClicked was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_id = (args[0] as String?);
          assert(arg_id != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onAdClicked was null, expected non-null String.');
          try {
            api.onAdClicked(arg_id!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onImpression', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onImpression was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_id = (args[0] as String?);
          assert(arg_id != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onImpression was null, expected non-null String.');
          final RewardedImpression? arg_data = (args[1] as RewardedImpression?);
          assert(arg_data != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onImpression was null, expected non-null RewardedImpression.');
          try {
            api.onImpression(arg_id!, arg_data!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onRewarded', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onRewarded was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_id = (args[0] as String?);
          assert(arg_id != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onRewarded was null, expected non-null String.');
          final RewardedEvent? arg_reward = (args[1] as RewardedEvent?);
          assert(arg_reward != null,
              'Argument for dev.flutter.pigeon.flutter_yandex_ads.FlutterYandexAdsRewarded.onRewarded was null, expected non-null RewardedEvent.');
          try {
            api.onRewarded(arg_id!, arg_reward!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}
