// Autogenerated from Pigeon (v1.0.19), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "Yandex.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString *, id> *wrapResult(id result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ? error.code : [NSNull null]),
        @"message": (error.message ? error.message : [NSNull null]),
        @"details": (error.details ? error.details : [NSNull null]),
        };
  }
  return @{
      @"result": (result ? result : [NSNull null]),
      @"error": errorDict,
      };
}
static id GetNullableObject(NSDictionary* dict, id key) {
  id result = dict[key];
  return (result == [NSNull null]) ? nil : result;
}


@interface EventRequest ()
+ (EventRequest *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface EventResponse ()
+ (EventResponse *)fromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end

@implementation EventRequest
+ (instancetype)makeWithName:(NSString *)name
    id:(NSString *)id
    type:(NSString *)type {
  EventRequest* pigeonResult = [[EventRequest alloc] init];
  pigeonResult.name = name;
  pigeonResult.id = id;
  pigeonResult.type = type;
  return pigeonResult;
}
+ (EventRequest *)fromMap:(NSDictionary *)dict {
  EventRequest *pigeonResult = [[EventRequest alloc] init];
  pigeonResult.name = GetNullableObject(dict, @"name");
  NSAssert(pigeonResult.name != nil, @"");
  pigeonResult.id = GetNullableObject(dict, @"id");
  NSAssert(pigeonResult.id != nil, @"");
  pigeonResult.type = GetNullableObject(dict, @"type");
  NSAssert(pigeonResult.type != nil, @"");
  return pigeonResult;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.name ? self.name : [NSNull null]), @"name", (self.id ? self.id : [NSNull null]), @"id", (self.type ? self.type : [NSNull null]), @"type", nil];
}
@end

@implementation EventResponse
+ (instancetype)makeWithData:(nullable NSString *)data
    code:(nullable NSNumber *)code
    description:(nullable NSString *)description {
  EventResponse* pigeonResult = [[EventResponse alloc] init];
  pigeonResult.data = data;
  pigeonResult.code = code;
  pigeonResult.description = description;
  return pigeonResult;
}
+ (EventResponse *)fromMap:(NSDictionary *)dict {
  EventResponse *pigeonResult = [[EventResponse alloc] init];
  pigeonResult.data = GetNullableObject(dict, @"data");
  pigeonResult.code = GetNullableObject(dict, @"code");
  pigeonResult.description = GetNullableObject(dict, @"description");
  return pigeonResult;
}
- (NSDictionary *)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.data ? self.data : [NSNull null]), @"data", (self.code ? self.code : [NSNull null]), @"code", (self.description ? self.description : [NSNull null]), @"description", nil];
}
@end

@interface YandexAdsApiCodecReader : FlutterStandardReader
@end
@implementation YandexAdsApiCodecReader
- (nullable id)readValueOfType:(UInt8)type 
{
  switch (type) {
    case 128:     
      return [EventRequest fromMap:[self readValue]];
    
    case 129:     
      return [EventResponse fromMap:[self readValue]];
    
    default:    
      return [super readValueOfType:type];
    
  }
}
@end

@interface YandexAdsApiCodecWriter : FlutterStandardWriter
@end
@implementation YandexAdsApiCodecWriter
- (void)writeValue:(id)value 
{
  if ([value isKindOfClass:[EventRequest class]]) {
    [self writeByte:128];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[EventResponse class]]) {
    [self writeByte:129];
    [self writeValue:[value toMap]];
  } else 
{
    [super writeValue:value];
  }
}
@end

@interface YandexAdsApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation YandexAdsApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[YandexAdsApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[YandexAdsApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *YandexAdsApiGetCodec() {
  static dispatch_once_t sPred = 0;
  static FlutterStandardMessageCodec *sSharedObject = nil;
  dispatch_once(&sPred, ^{
    YandexAdsApiCodecReaderWriter *readerWriter = [[YandexAdsApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}


void YandexAdsApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<YandexAdsApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.YandexAdsApi.initialize"
        binaryMessenger:binaryMessenger
        codec:YandexAdsApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(initializeWithError:)], @"YandexAdsApi api (%@) doesn't respond to @selector(initializeWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api initializeWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.YandexAdsApi.onAdLoaded"
        binaryMessenger:binaryMessenger
        codec:YandexAdsApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onAdLoadedRequest:completion:)], @"YandexAdsApi api (%@) doesn't respond to @selector(onAdLoadedRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        EventRequest *arg_request = args[0];
        [api onAdLoadedRequest:arg_request completion:^(EventResponse *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.YandexAdsApi.onAdFailedToLoad"
        binaryMessenger:binaryMessenger
        codec:YandexAdsApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onAdFailedToLoadRequest:completion:)], @"YandexAdsApi api (%@) doesn't respond to @selector(onAdFailedToLoadRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        EventRequest *arg_request = args[0];
        [api onAdFailedToLoadRequest:arg_request completion:^(EventResponse *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.YandexAdsApi.onImpression"
        binaryMessenger:binaryMessenger
        codec:YandexAdsApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onImpressionRequest:completion:)], @"YandexAdsApi api (%@) doesn't respond to @selector(onImpressionRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        EventRequest *arg_request = args[0];
        [api onImpressionRequest:arg_request completion:^(EventResponse *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.YandexAdsApi.onAdClicked"
        binaryMessenger:binaryMessenger
        codec:YandexAdsApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onAdClickedRequest:completion:)], @"YandexAdsApi api (%@) doesn't respond to @selector(onAdClickedRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        EventRequest *arg_request = args[0];
        [api onAdClickedRequest:arg_request completion:^(EventResponse *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.YandexAdsApi.onLeftApplication"
        binaryMessenger:binaryMessenger
        codec:YandexAdsApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onLeftApplicationRequest:completion:)], @"YandexAdsApi api (%@) doesn't respond to @selector(onLeftApplicationRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        EventRequest *arg_request = args[0];
        [api onLeftApplicationRequest:arg_request completion:^(EventResponse *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.YandexAdsApi.onReturnedToApplication"
        binaryMessenger:binaryMessenger
        codec:YandexAdsApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onReturnedToApplicationRequest:completion:)], @"YandexAdsApi api (%@) doesn't respond to @selector(onReturnedToApplicationRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        EventRequest *arg_request = args[0];
        [api onReturnedToApplicationRequest:arg_request completion:^(EventResponse *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.YandexAdsApi.onAdShown"
        binaryMessenger:binaryMessenger
        codec:YandexAdsApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onAdShownRequest:completion:)], @"YandexAdsApi api (%@) doesn't respond to @selector(onAdShownRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        EventRequest *arg_request = args[0];
        [api onAdShownRequest:arg_request completion:^(EventResponse *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.YandexAdsApi.onAdDismissed"
        binaryMessenger:binaryMessenger
        codec:YandexAdsApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(onAdDismissedRequest:completion:)], @"YandexAdsApi api (%@) doesn't respond to @selector(onAdDismissedRequest:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        EventRequest *arg_request = args[0];
        [api onAdDismissedRequest:arg_request completion:^(EventResponse *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}