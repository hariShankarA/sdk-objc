// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: subscriber.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30001
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum Platform

typedef GPB_ENUM(Platform) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  Platform_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Platform_Invalid = 0,
  Platform_Ios = 1,
  Platform_Android = 2,
  Platform_Test = 3,
};

GPBEnumDescriptor *Platform_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL Platform_IsValidValue(int32_t value);

#pragma mark - SubscriberRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface SubscriberRoot : GPBRootObject
@end

#pragma mark - Subscriber

typedef GPB_ENUM(Subscriber_FieldNumber) {
  Subscriber_FieldNumber_Id_p = 1,
  Subscriber_FieldNumber_Target = 2,
  Subscriber_FieldNumber_Platform = 3,
};

@interface Subscriber : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/// e.g push token
@property(nonatomic, readwrite, copy, null_resettable) NSString *target;

@property(nonatomic, readwrite) Platform platform;

@end

/// Fetches the raw value of a @c Subscriber's @c platform property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t Subscriber_Platform_RawValue(Subscriber *message);
/// Sets the raw value of an @c Subscriber's @c platform property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetSubscriber_Platform_RawValue(Subscriber *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
