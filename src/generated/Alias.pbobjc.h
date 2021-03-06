// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: alias.proto

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

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class Alias;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum VerificationStatus

/**
 * When the user verifies an alias, e.g. by entering a code,
 * the verification may succeed or fail in one of several ways.
 **/
typedef GPB_ENUM(VerificationStatus) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  VerificationStatus_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  VerificationStatus_Invalid = 0,
  VerificationStatus_Unknown = 1,
  VerificationStatus_Success = 2,
  VerificationStatus_IncorrectCode = 3,
  VerificationStatus_ExpiredCode = 4,

  /** reached the limit of attempts to enter a specific code */
  VerificationStatus_TooManyCodeAttempts = 5,
};

GPBEnumDescriptor *VerificationStatus_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL VerificationStatus_IsValidValue(int32_t value);

#pragma mark - Enum Alias_Type

typedef GPB_ENUM(Alias_Type) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Alias_Type_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Alias_Type_Invalid = 0,

  /**
   * Unknown type. Useful for UI: For example, if user wants to pay "sandy\@example.com",
   * let server determine that's an EMAIL alias.
   **/
  Alias_Type_Unknown = 1,

  /** Email address. For example, "sandy\@example.com" */
  Alias_Type_Email = 2,

  /** unused */
  Alias_Type_Phone = 3,

  /** unused */
  Alias_Type_Domain = 4,

  /** deprecated */
  Alias_Type_Username = 5,

  /** for banks only */
  Alias_Type_Bank = 6,

  /** Custom type, for instance a bank specific customer ID. */
  Alias_Type_Custom = 7,
};

GPBEnumDescriptor *Alias_Type_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Alias_Type_IsValidValue(int32_t value);

#pragma mark - AliasRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface AliasRoot : GPBRootObject
@end

#pragma mark - Alias

typedef GPB_ENUM(Alias_FieldNumber) {
  Alias_FieldNumber_Type = 1,
  Alias_FieldNumber_Value = 2,
  Alias_FieldNumber_Realm = 3,
};

/**
 * An Alias refers to a member in a "human readable" way.
 * Normally, an alias must be verified before it's useful.
 * E.g., payments to { EMAIL, "sandy\@example.com" } work only if
 * some member has verified receiving an email at that address.
 **/
@interface Alias : GPBMessage

/** For example, EMAIL. */
@property(nonatomic, readwrite) Alias_Type type;

/** For example, "sandy\@example.com" */
@property(nonatomic, readwrite, copy, null_resettable) NSString *value;

/** For example, "token" */
@property(nonatomic, readwrite, copy, null_resettable) NSString *realm;

@end

/**
 * Fetches the raw value of a @c Alias's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Alias_Type_RawValue(Alias *message);
/**
 * Sets the raw value of an @c Alias's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetAlias_Type_RawValue(Alias *message, int32_t value);

#pragma mark - VerifyAliasPayload

typedef GPB_ENUM(VerifyAliasPayload_FieldNumber) {
  VerifyAliasPayload_FieldNumber_MemberId = 1,
  VerifyAliasPayload_FieldNumber_Alias = 2,
};

/**
 * Payload containing a member ID and an alias, used in alias verification.
 **/
@interface VerifyAliasPayload : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *memberId;

@property(nonatomic, readwrite, strong, null_resettable) Alias *alias;
/** Test to see if @c alias has been set. */
@property(nonatomic, readwrite) BOOL hasAlias;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
