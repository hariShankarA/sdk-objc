// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: notification.proto

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

@class AddKey;
@class LinkAccounts;
@class LinkAccountsAndAddKey;
@class StepUp;
@class TransferProcessed;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum NotifyStatus

typedef GPB_ENUM(NotifyStatus) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  NotifyStatus_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  NotifyStatus_Failed = 0,
  NotifyStatus_Sent = 1,
  NotifyStatus_NoSubscribers = 2,
};

GPBEnumDescriptor *NotifyStatus_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL NotifyStatus_IsValidValue(int32_t value);

#pragma mark - NotificationRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface NotificationRoot : GPBRootObject
@end

#pragma mark - TransferProcessed

typedef GPB_ENUM(TransferProcessed_FieldNumber) {
  TransferProcessed_FieldNumber_TransferId = 1,
};

/// A notification that a transfer was successfully processed.
@interface TransferProcessed : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *transferId;

@end

#pragma mark - LinkAccounts

typedef GPB_ENUM(LinkAccounts_FieldNumber) {
  LinkAccounts_FieldNumber_BankId = 1,
  LinkAccounts_FieldNumber_BankName = 2,
  LinkAccounts_FieldNumber_AccountLinkPayloadsArray = 3,
};

/// A notification that a bank wants to be linked.
@interface LinkAccounts : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *bankId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *bankName;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *accountLinkPayloadsArray;
/// The number of items in @c accountLinkPayloadsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger accountLinkPayloadsArray_Count;

@end

#pragma mark - StepUp

typedef GPB_ENUM(StepUp_FieldNumber) {
  StepUp_FieldNumber_TokenId = 1,
};

/// A notification to step up / endorse a token.
@interface StepUp : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *tokenId;

@end

#pragma mark - AddKey

typedef GPB_ENUM(AddKey_FieldNumber) {
  AddKey_FieldNumber_PublicKey = 1,
  AddKey_FieldNumber_Name = 2,
};

/// A notification that a key wants to be added to a member.
@interface AddKey : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *publicKey;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@end

#pragma mark - LinkAccountsAndAddKey

typedef GPB_ENUM(LinkAccountsAndAddKey_FieldNumber) {
  LinkAccountsAndAddKey_FieldNumber_LinkAccounts = 1,
  LinkAccountsAndAddKey_FieldNumber_AddKey = 2,
};

/// A notification that a bank wants to be linked, and keys want to be added.
@interface LinkAccountsAndAddKey : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) LinkAccounts *linkAccounts;
/// Test to see if @c linkAccounts has been set.
@property(nonatomic, readwrite) BOOL hasLinkAccounts;

@property(nonatomic, readwrite, strong, null_resettable) AddKey *addKey;
/// Test to see if @c addKey has been set.
@property(nonatomic, readwrite) BOOL hasAddKey;

@end

#pragma mark - Notification

typedef GPB_ENUM(Notification_FieldNumber) {
  Notification_FieldNumber_TransferProcessed = 1,
  Notification_FieldNumber_LinkAccounts = 2,
  Notification_FieldNumber_StepUp = 3,
  Notification_FieldNumber_AddKey = 4,
  Notification_FieldNumber_LinkAccountsAndAddKey = 5,
};

typedef GPB_ENUM(Notification_Notification_OneOfCase) {
  Notification_Notification_OneOfCase_GPBUnsetOneOfCase = 0,
  Notification_Notification_OneOfCase_TransferProcessed = 1,
  Notification_Notification_OneOfCase_LinkAccounts = 2,
  Notification_Notification_OneOfCase_StepUp = 3,
  Notification_Notification_OneOfCase_AddKey = 4,
  Notification_Notification_OneOfCase_LinkAccountsAndAddKey = 5,
};

@interface Notification : GPBMessage

@property(nonatomic, readonly) Notification_Notification_OneOfCase notificationOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) TransferProcessed *transferProcessed;

@property(nonatomic, readwrite, strong, null_resettable) LinkAccounts *linkAccounts;

@property(nonatomic, readwrite, strong, null_resettable) StepUp *stepUp;

@property(nonatomic, readwrite, strong, null_resettable) AddKey *addKey;

@property(nonatomic, readwrite, strong, null_resettable) LinkAccountsAndAddKey *linkAccountsAndAddKey;

@end

/// Clears whatever value was set for the oneof 'notification'.
void Notification_ClearNotificationOneOfCase(Notification *message);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
