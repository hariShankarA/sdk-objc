// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: security.proto

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

#pragma mark - Enum Key_Level

typedef GPB_ENUM(Key_Level) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  Key_Level_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Key_Level_Privileged = 0,
  Key_Level_Standard = 1,
  Key_Level_Low = 2,
};

GPBEnumDescriptor *Key_Level_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL Key_Level_IsValidValue(int32_t value);

#pragma mark - SecurityRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface SecurityRoot : GPBRootObject
@end

#pragma mark - Key

typedef GPB_ENUM(Key_FieldNumber) {
  Key_FieldNumber_Id_p = 1,
  Key_FieldNumber_PublicKey = 2,
  Key_FieldNumber_Level = 3,
};

@interface Key : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/// Base64url encoded public key.
@property(nonatomic, readwrite, copy, null_resettable) NSString *publicKey;

@property(nonatomic, readwrite) Key_Level level;

@end

/// Fetches the raw value of a @c Key's @c level property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t Key_Level_RawValue(Key *message);
/// Sets the raw value of an @c Key's @c level property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetKey_Level_RawValue(Key *message, int32_t value);

#pragma mark - Signature

typedef GPB_ENUM(Signature_FieldNumber) {
  Signature_FieldNumber_MemberId = 1,
  Signature_FieldNumber_KeyId = 2,
  Signature_FieldNumber_Signature = 3,
};

@interface Signature : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *keyId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *signature;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
