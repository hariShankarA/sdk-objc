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

@class AddKey;
@class BankAuthorization;
@class Key;
@class LinkAccounts;
@class LinkAccountsAndAddKey;
@class NotificationContent;
@class PayeeTransferProcessed;
@class PayerTransferFailed;
@class PayerTransferProcessed;
@class PaymentRequest;
@class StepUp;
@class TokenPayload;
@class TransferFailed;
@class TransferProcessed;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum NotifyStatus

/**
 * The status returned when sending a notification. ACCEPTED means the notification was initiated, but
 * not necessarily successfully delivered
 **/
typedef GPB_ENUM(NotifyStatus) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  NotifyStatus_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  NotifyStatus_Invalid = 0,
  NotifyStatus_Accepted = 1,
  NotifyStatus_NoSubscribers = 2,
};

GPBEnumDescriptor *NotifyStatus_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL NotifyStatus_IsValidValue(int32_t value);

#pragma mark - Enum Notification_Status

typedef GPB_ENUM(Notification_Status) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Notification_Status_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  Notification_Status_Invalid = 0,
  Notification_Status_Pending = 1,
  Notification_Status_Delivered = 2,
};

GPBEnumDescriptor *Notification_Status_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Notification_Status_IsValidValue(int32_t value);

#pragma mark - NotificationRoot

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
@interface NotificationRoot : GPBRootObject
@end

#pragma mark - PayerTransferProcessed

typedef GPB_ENUM(PayerTransferProcessed_FieldNumber) {
  PayerTransferProcessed_FieldNumber_TransferId = 1,
};

/**
 * A notification to the payer that a transfer was successfully processed.
 **/
@interface PayerTransferProcessed : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *transferId;

@end

#pragma mark - PayeeTransferProcessed

typedef GPB_ENUM(PayeeTransferProcessed_FieldNumber) {
  PayeeTransferProcessed_FieldNumber_TransferId = 1,
};

/**
 * A notification to the payee that a transfer was successfully processed.
 **/
@interface PayeeTransferProcessed : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *transferId;

@end

#pragma mark - PayerTransferFailed

typedef GPB_ENUM(PayerTransferFailed_FieldNumber) {
  PayerTransferFailed_FieldNumber_TransferId = 1,
};

/**
 * A notification to the payer that a transfer failed.
 **/
@interface PayerTransferFailed : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *transferId;

@end

#pragma mark - TransferProcessed

typedef GPB_ENUM(TransferProcessed_FieldNumber) {
  TransferProcessed_FieldNumber_TransferId = 1,
};

/**
 * A generic notification that a transfer was successfully processed.
 **/
@interface TransferProcessed : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *transferId;

@end

#pragma mark - TransferFailed

typedef GPB_ENUM(TransferFailed_FieldNumber) {
  TransferFailed_FieldNumber_TransferId = 1,
};

/**
 * A generic notification that a transfer failed.
 **/
@interface TransferFailed : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *transferId;

@end

#pragma mark - LinkAccounts

typedef GPB_ENUM(LinkAccounts_FieldNumber) {
  LinkAccounts_FieldNumber_BankAuthorization = 1,
};

/**
 * A notification that a bank wants to be linked.
 **/
@interface LinkAccounts : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) BankAuthorization *bankAuthorization;
/** Test to see if @c bankAuthorization has been set. */
@property(nonatomic, readwrite) BOOL hasBankAuthorization;

@end

#pragma mark - StepUp

typedef GPB_ENUM(StepUp_FieldNumber) {
  StepUp_FieldNumber_TokenId = 1,
};

/**
 * A notification to step up / endorse a token.
 **/
@interface StepUp : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *tokenId;

@end

#pragma mark - AddKey

typedef GPB_ENUM(AddKey_FieldNumber) {
  AddKey_FieldNumber_Name = 1,
  AddKey_FieldNumber_Key = 2,
};

/**
 * A notification that a key wants to be added to a member.
 **/
@interface AddKey : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, strong, null_resettable) Key *key;
/** Test to see if @c key has been set. */
@property(nonatomic, readwrite) BOOL hasKey;

@end

#pragma mark - LinkAccountsAndAddKey

typedef GPB_ENUM(LinkAccountsAndAddKey_FieldNumber) {
  LinkAccountsAndAddKey_FieldNumber_LinkAccounts = 1,
  LinkAccountsAndAddKey_FieldNumber_AddKey = 2,
};

/**
 * A notification that a bank wants to be linked, and keys want to be added.
 **/
@interface LinkAccountsAndAddKey : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) LinkAccounts *linkAccounts;
/** Test to see if @c linkAccounts has been set. */
@property(nonatomic, readwrite) BOOL hasLinkAccounts;

@property(nonatomic, readwrite, strong, null_resettable) AddKey *addKey;
/** Test to see if @c addKey has been set. */
@property(nonatomic, readwrite) BOOL hasAddKey;

@end

#pragma mark - PaymentRequest

typedef GPB_ENUM(PaymentRequest_FieldNumber) {
  PaymentRequest_FieldNumber_Payload = 1,
};

/**
 * A notification to request a payment
 **/
@interface PaymentRequest : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) TokenPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

@end

#pragma mark - NotifyBody

typedef GPB_ENUM(NotifyBody_FieldNumber) {
  NotifyBody_FieldNumber_PayerTransferProcessed = 1,
  NotifyBody_FieldNumber_LinkAccounts = 2,
  NotifyBody_FieldNumber_StepUp = 3,
  NotifyBody_FieldNumber_AddKey = 4,
  NotifyBody_FieldNumber_LinkAccountsAndAddKey = 5,
  NotifyBody_FieldNumber_PayeeTransferProcessed = 6,
  NotifyBody_FieldNumber_PaymentRequest = 7,
  NotifyBody_FieldNumber_PayerTransferFailed = 8,
  NotifyBody_FieldNumber_TransferProcessed = 9,
  NotifyBody_FieldNumber_TransferFailed = 10,
};

typedef GPB_ENUM(NotifyBody_Body_OneOfCase) {
  NotifyBody_Body_OneOfCase_GPBUnsetOneOfCase = 0,
  NotifyBody_Body_OneOfCase_PayerTransferProcessed = 1,
  NotifyBody_Body_OneOfCase_LinkAccounts = 2,
  NotifyBody_Body_OneOfCase_StepUp = 3,
  NotifyBody_Body_OneOfCase_AddKey = 4,
  NotifyBody_Body_OneOfCase_LinkAccountsAndAddKey = 5,
  NotifyBody_Body_OneOfCase_PayeeTransferProcessed = 6,
  NotifyBody_Body_OneOfCase_PaymentRequest = 7,
  NotifyBody_Body_OneOfCase_PayerTransferFailed = 8,
  NotifyBody_Body_OneOfCase_TransferProcessed = 9,
  NotifyBody_Body_OneOfCase_TransferFailed = 10,
};

/**
 * A data that goes in a NotifyRequest
 **/
@interface NotifyBody : GPBMessage

@property(nonatomic, readonly) NotifyBody_Body_OneOfCase bodyOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) PayerTransferProcessed *payerTransferProcessed;

@property(nonatomic, readwrite, strong, null_resettable) LinkAccounts *linkAccounts;

@property(nonatomic, readwrite, strong, null_resettable) StepUp *stepUp;

@property(nonatomic, readwrite, strong, null_resettable) AddKey *addKey;

@property(nonatomic, readwrite, strong, null_resettable) LinkAccountsAndAddKey *linkAccountsAndAddKey;

@property(nonatomic, readwrite, strong, null_resettable) PayeeTransferProcessed *payeeTransferProcessed;

@property(nonatomic, readwrite, strong, null_resettable) PaymentRequest *paymentRequest;

@property(nonatomic, readwrite, strong, null_resettable) PayerTransferFailed *payerTransferFailed;

@property(nonatomic, readwrite, strong, null_resettable) TransferProcessed *transferProcessed;

@property(nonatomic, readwrite, strong, null_resettable) TransferFailed *transferFailed;

@end

/**
 * Clears whatever value was set for the oneof 'body'.
 **/
void NotifyBody_ClearBodyOneOfCase(NotifyBody *message);

#pragma mark - Notification

typedef GPB_ENUM(Notification_FieldNumber) {
  Notification_FieldNumber_Id_p = 1,
  Notification_FieldNumber_SubscriberId = 2,
  Notification_FieldNumber_Content = 3,
  Notification_FieldNumber_Status = 4,
};

/**
 * The record of a notification. Retrieved from notification service
 **/
@interface Notification : GPBMessage

/** A unique ID given to this notification */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/** The subscriber that was or will be notified */
@property(nonatomic, readwrite, copy, null_resettable) NSString *subscriberId;

/** Contents of the notification */
@property(nonatomic, readwrite, strong, null_resettable) NotificationContent *content;
/** Test to see if @c content has been set. */
@property(nonatomic, readwrite) BOOL hasContent;

@property(nonatomic, readwrite) Notification_Status status;

@end

/**
 * Fetches the raw value of a @c Notification's @c status property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Notification_Status_RawValue(Notification *message);
/**
 * Sets the raw value of an @c Notification's @c status property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetNotification_Status_RawValue(Notification *message, int32_t value);

#pragma mark - NotificationContent

typedef GPB_ENUM(NotificationContent_FieldNumber) {
  NotificationContent_FieldNumber_Type = 1,
  NotificationContent_FieldNumber_Title = 2,
  NotificationContent_FieldNumber_Body = 3,
  NotificationContent_FieldNumber_Payload = 4,
  NotificationContent_FieldNumber_CreatedAtMs = 5,
  NotificationContent_FieldNumber_LocKey = 6,
  NotificationContent_FieldNumber_LocArgsArray = 7,
};

/**
 * The contents of a notification that was sent or will be sent
 **/
@interface NotificationContent : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

@property(nonatomic, readwrite, copy, null_resettable) NSString *body;

@property(nonatomic, readwrite, copy, null_resettable) NSString *locKey;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *locArgsArray;
/** The number of items in @c locArgsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger locArgsArray_Count;

@property(nonatomic, readwrite, copy, null_resettable) NSString *payload;

@property(nonatomic, readwrite) int64_t createdAtMs;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
