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
@class BalanceStepUp;
@class BankAuthorization;
@class CreateAndEndorseToken;
@class DeviceMetadata;
@class EndorseAndAddKey;
@class Key;
@class LinkAccounts;
@class LinkAccountsAndAddKey;
@class NotificationContent;
@class NotificationInvalidated;
@class PayeeTransferProcessed;
@class PayerTransferFailed;
@class PayerTransferProcessed;
@class PaymentRequest;
@class ReceiptContact;
@class RecoveryCompleted;
@class StepUp;
@class TokenCancelled;
@class TokenPayload;
@class TokenRequest;
@class TransactionStepUp;
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

  /** The member has completed the notification */
  Notification_Status_Completed = 3,

  /** the notification has been invalidated */
  Notification_Status_Invalidated = 4,
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

#pragma mark - DeviceMetadata

typedef GPB_ENUM(DeviceMetadata_FieldNumber) {
  DeviceMetadata_FieldNumber_Application = 1,
  DeviceMetadata_FieldNumber_ApplicationVersion = 2,
  DeviceMetadata_FieldNumber_Device = 3,
  DeviceMetadata_FieldNumber_Longitude = 4,
  DeviceMetadata_FieldNumber_Latitude = 5,
};

/**
 * Metadata for a notification
 **/
@interface DeviceMetadata : GPBMessage

/** Name of the application to add keys to (e.g. Token, Chrome) */
@property(nonatomic, readwrite, copy, null_resettable) NSString *application;

/** Application version (e.g. 2.0) */
@property(nonatomic, readwrite, copy, null_resettable) NSString *applicationVersion;

/** Device the application resides on (e.g. Mac, iPhone X), to support multiple devices */
@property(nonatomic, readwrite, copy, null_resettable) NSString *device;

/** Longitude of the user's location to signal where the request is coming from */
@property(nonatomic, readwrite) double longitude;

/** Latitude of the user's location */
@property(nonatomic, readwrite) double latitude;

@end

#pragma mark - PayerTransferProcessed

typedef GPB_ENUM(PayerTransferProcessed_FieldNumber) {
  PayerTransferProcessed_FieldNumber_TransferId = 1,
};

/**
 * A notification to the payer that a transfer was successfully processed.
 **/
@interface PayerTransferProcessed : GPBMessage

/** transfer ID */
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

/** transfer ID */
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

/** transfer ID */
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

/** transfer ID */
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

/** transfer ID */
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
 * E.g., perhaps user tried to endorse in browser with only LOW-privilege
 * key available but needs a HIGH-privilege key signature.
 **/
@interface StepUp : GPBMessage

/** ID of Token to endorse */
@property(nonatomic, readwrite, copy, null_resettable) NSString *tokenId;

@end

#pragma mark - BalanceStepUp

typedef GPB_ENUM(BalanceStepUp_FieldNumber) {
  BalanceStepUp_FieldNumber_AccountIdArray = 1,
};

/**
 * A notification to step up a get balance(s) request
 **/
@interface BalanceStepUp : GPBMessage

/** Account IDs */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *accountIdArray;
/** The number of items in @c accountIdArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger accountIdArray_Count;

@end

#pragma mark - TransactionStepUp

typedef GPB_ENUM(TransactionStepUp_FieldNumber) {
  TransactionStepUp_FieldNumber_AccountId = 1,
  TransactionStepUp_FieldNumber_TransactionId = 2,
};

/**
 * A notification to step up a transaction request
 **/
@interface TransactionStepUp : GPBMessage

/** Account ID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *accountId;

/** Transaction ID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *transactionId;

@end

#pragma mark - RecoveryCompleted

/**
 * A notification to notify a member that a recovery process has completed
 **/
@interface RecoveryCompleted : GPBMessage

@end

#pragma mark - AddKey

typedef GPB_ENUM(AddKey_FieldNumber) {
  AddKey_FieldNumber_ExpiresMs = 3,
  AddKey_FieldNumber_KeysArray = 4,
  AddKey_FieldNumber_DeviceMetadata = 5,
};

/**
 * A notification that a key wants to be added to a member. Clients should timeout the notification
 * and screen, once the expires_ms has passed
 **/
@interface AddKey : GPBMessage

/** Expiration time */
@property(nonatomic, readwrite) int64_t expiresMs;

/** List of new keys to add */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Key*> *keysArray;
/** The number of items in @c keysArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger keysArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) DeviceMetadata *deviceMetadata;
/** Test to see if @c deviceMetadata has been set. */
@property(nonatomic, readwrite) BOOL hasDeviceMetadata;

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

/** requested payment */
@property(nonatomic, readwrite, strong, null_resettable) TokenPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

@end

#pragma mark - TokenCancelled

typedef GPB_ENUM(TokenCancelled_FieldNumber) {
  TokenCancelled_FieldNumber_TokenId = 1,
};

/**
 * A notification that a token was cancelled
 **/
@interface TokenCancelled : GPBMessage

/** Token ID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *tokenId;

@end

#pragma mark - EndorseAndAddKey

typedef GPB_ENUM(EndorseAndAddKey_FieldNumber) {
  EndorseAndAddKey_FieldNumber_Payload = 1,
  EndorseAndAddKey_FieldNumber_AddKey = 2,
  EndorseAndAddKey_FieldNumber_TokenRequestId = 3,
  EndorseAndAddKey_FieldNumber_BankId = 4,
  EndorseAndAddKey_FieldNumber_State = 5,
  EndorseAndAddKey_FieldNumber_Contact = 6,
};

DEPRECATED_ATTRIBUTE
@interface EndorseAndAddKey : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) TokenPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

@property(nonatomic, readwrite, strong, null_resettable) AddKey *addKey;
/** Test to see if @c addKey has been set. */
@property(nonatomic, readwrite) BOOL hasAddKey;

/** Optional token request ID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *tokenRequestId;

/** Optional bank ID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *bankId;

/** Optional token request state for signing */
@property(nonatomic, readwrite, copy, null_resettable) NSString *state;

/** Optional receipt contact */
@property(nonatomic, readwrite, strong, null_resettable) ReceiptContact *contact;
/** Test to see if @c contact has been set. */
@property(nonatomic, readwrite) BOOL hasContact;

@end

#pragma mark - CreateAndEndorseToken

typedef GPB_ENUM(CreateAndEndorseToken_FieldNumber) {
  CreateAndEndorseToken_FieldNumber_TokenRequest = 1,
  CreateAndEndorseToken_FieldNumber_AddKey = 2,
  CreateAndEndorseToken_FieldNumber_Contact = 3,
};

/**
 * A notification that a token needs to be created/endorsed
 **/
@interface CreateAndEndorseToken : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) TokenRequest *tokenRequest;
/** Test to see if @c tokenRequest has been set. */
@property(nonatomic, readwrite) BOOL hasTokenRequest;

/** Optional key to add */
@property(nonatomic, readwrite, strong, null_resettable) AddKey *addKey;
/** Test to see if @c addKey has been set. */
@property(nonatomic, readwrite) BOOL hasAddKey;

/** Optional receipt contact */
@property(nonatomic, readwrite, strong, null_resettable) ReceiptContact *contact;
/** Test to see if @c contact has been set. */
@property(nonatomic, readwrite) BOOL hasContact;

@end

#pragma mark - NotificationInvalidated

typedef GPB_ENUM(NotificationInvalidated_FieldNumber) {
  NotificationInvalidated_FieldNumber_PreviousNotificationId = 1,
};

/**
 * A notification to indicate that a previously sent notification was invalidated
 **/
@interface NotificationInvalidated : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *previousNotificationId;

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
  NotifyBody_FieldNumber_TokenCancelled = 11,
  NotifyBody_FieldNumber_BalanceStepUp = 12,
  NotifyBody_FieldNumber_TransactionStepUp = 13,
  NotifyBody_FieldNumber_EndorseAndAddKey = 14,
  NotifyBody_FieldNumber_RecoveryCompleted = 15,
  NotifyBody_FieldNumber_NotificationInvalidated = 16,
  NotifyBody_FieldNumber_CreateAndEndorseToken = 17,
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
  NotifyBody_Body_OneOfCase_TokenCancelled = 11,
  NotifyBody_Body_OneOfCase_BalanceStepUp = 12,
  NotifyBody_Body_OneOfCase_TransactionStepUp = 13,
  NotifyBody_Body_OneOfCase_EndorseAndAddKey = 14,
  NotifyBody_Body_OneOfCase_RecoveryCompleted = 15,
  NotifyBody_Body_OneOfCase_NotificationInvalidated = 16,
  NotifyBody_Body_OneOfCase_CreateAndEndorseToken = 17,
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

@property(nonatomic, readwrite, strong, null_resettable) TokenCancelled *tokenCancelled;

@property(nonatomic, readwrite, strong, null_resettable) BalanceStepUp *balanceStepUp;

@property(nonatomic, readwrite, strong, null_resettable) TransactionStepUp *transactionStepUp;

@property(nonatomic, readwrite, strong, null_resettable) EndorseAndAddKey *endorseAndAddKey DEPRECATED_ATTRIBUTE;

@property(nonatomic, readwrite, strong, null_resettable) RecoveryCompleted *recoveryCompleted;

@property(nonatomic, readwrite, strong, null_resettable) NotificationInvalidated *notificationInvalidated;

@property(nonatomic, readwrite, strong, null_resettable) CreateAndEndorseToken *createAndEndorseToken;

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

@property(nonatomic, readwrite, copy, null_resettable) NSString *payload;

@property(nonatomic, readwrite) int64_t createdAtMs;

@property(nonatomic, readwrite, copy, null_resettable) NSString *locKey;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *locArgsArray;
/** The number of items in @c locArgsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger locArgsArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
