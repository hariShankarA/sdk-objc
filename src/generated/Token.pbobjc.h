// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: token.proto

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

@class AccessBody;
@class AccessBody_Resource;
@class AccessBody_Resource_Account;
@class AccessBody_Resource_AccountBalance;
@class AccessBody_Resource_AccountTransactions;
@class AccessBody_Resource_Address;
@class AccessBody_Resource_AllAccountBalances;
@class AccessBody_Resource_AllAccountTransactions;
@class AccessBody_Resource_AllAccounts;
@class AccessBody_Resource_AllAddresses;
@class Alias;
@class Attachment;
@class Pricing;
@class Signature;
@class Token;
@class TokenMember;
@class TokenPayload;
@class TokenPayload_ActingAs;
@class TokenSignature;
@class TransferBody;
@class TransferInstructions;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum TransferTokenStatus

/**
 *
 * Describes token creation error codes.
 **/
typedef GPB_ENUM(TransferTokenStatus) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  TransferTokenStatus_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  TransferTokenStatus_Invalid = 0,
  TransferTokenStatus_Success = 1,

  /** the request has been rejected */
  TransferTokenStatus_FailureRejected = 2,

  /** the request has failed due to insufficient funds */
  TransferTokenStatus_FailureInsufficientFunds = 3,

  /** the request has failed, because currency is invalid/unsupported */
  TransferTokenStatus_FailureInvalidCurrency = 4,

  /** the request has failed, source account not found */
  TransferTokenStatus_FailureSourceAccountNotFound = 5,

  /** the request has failed, destination account not found */
  TransferTokenStatus_FailureDestinationAccountNotFound = 6,

  /** the request has failed, because the amount is invalid */
  TransferTokenStatus_FailureInvalidAmount = 10,

  /** the request has failed, because the pricing quote is invalid */
  TransferTokenStatus_FailureInvalidQuote = 11,

  /** the request has failed, because external authorization is needed */
  TransferTokenStatus_FailureExternalAuthorizationRequired = 12,

  /** the request has failed due to other reasons */
  TransferTokenStatus_FailureGeneric = 9,
};

GPBEnumDescriptor *TransferTokenStatus_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL TransferTokenStatus_IsValidValue(int32_t value);

#pragma mark - Enum TokenSignature_Action

/**
 * List of valid actions that one can perform on the Token. We use lowercase string value
 * of the action when computing a signature.
 **/
typedef GPB_ENUM(TokenSignature_Action) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  TokenSignature_Action_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  TokenSignature_Action_Invalid = 0,

  /** Endorses token. Both payer and payer bank co-endorse the token. */
  TokenSignature_Action_Endorsed = 1,

  /** Revoked by the payer or declined by the redeemer. */
  TokenSignature_Action_Cancelled = 2,
};

GPBEnumDescriptor *TokenSignature_Action_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL TokenSignature_Action_IsValidValue(int32_t value);

#pragma mark - Enum TokenOperationResult_Status

typedef GPB_ENUM(TokenOperationResult_Status) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  TokenOperationResult_Status_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  TokenOperationResult_Status_Invalid = 0,

  /** Operation succeeded. */
  TokenOperationResult_Status_Success = 1,

  /**
   * Token needs more signatures.
   * If that's surprising: Perhaps used LOW or STANDARD key but needs PRIVILEGED?
   **/
  TokenOperationResult_Status_MoreSignaturesNeeded = 2,
};

GPBEnumDescriptor *TokenOperationResult_Status_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL TokenOperationResult_Status_IsValidValue(int32_t value);

#pragma mark - TokenRoot

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
@interface TokenRoot : GPBRootObject
@end

#pragma mark - Token

typedef GPB_ENUM(Token_FieldNumber) {
  Token_FieldNumber_Id_p = 1,
  Token_FieldNumber_Payload = 2,
  Token_FieldNumber_PayloadSignaturesArray = 3,
  Token_FieldNumber_ReplacedByTokenId = 4,
  Token_FieldNumber_TokenRequestId = 5,
};

/**
 *
 * Generic token envelope definition.
 **/
@interface Token : GPBMessage

/** Computed as sha(token). */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/** Token payload, being signed. */
@property(nonatomic, readwrite, strong, null_resettable) TokenPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

/** Payload signatures. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<TokenSignature*> *payloadSignaturesArray;
/** The number of items in @c payloadSignaturesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger payloadSignaturesArray_Count;

/** ID of the latest token replacing it */
@property(nonatomic, readwrite, copy, null_resettable) NSString *replacedByTokenId;

/** ID of the token request associated with the token (optional) */
@property(nonatomic, readwrite, copy, null_resettable) NSString *tokenRequestId;

@end

#pragma mark - TokenRequest

typedef GPB_ENUM(TokenRequest_FieldNumber) {
  TokenRequest_FieldNumber_Id_p = 1,
  TokenRequest_FieldNumber_Payload = 2,
  TokenRequest_FieldNumber_Options = 3,
};

@interface TokenRequest : GPBMessage

/** request id */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/** token payload */
@property(nonatomic, readwrite, strong, null_resettable) TokenPayload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

/** generic string map of options */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, NSString*> *options;
/** The number of items in @c options without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger options_Count;

@end

#pragma mark - TokenSignature

typedef GPB_ENUM(TokenSignature_FieldNumber) {
  TokenSignature_FieldNumber_Action = 1,
  TokenSignature_FieldNumber_Signature = 2,
};

@interface TokenSignature : GPBMessage

@property(nonatomic, readwrite) TokenSignature_Action action;

@property(nonatomic, readwrite, strong, null_resettable) Signature *signature;
/** Test to see if @c signature has been set. */
@property(nonatomic, readwrite) BOOL hasSignature;

@end

/**
 * Fetches the raw value of a @c TokenSignature's @c action property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t TokenSignature_Action_RawValue(TokenSignature *message);
/**
 * Sets the raw value of an @c TokenSignature's @c action property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTokenSignature_Action_RawValue(TokenSignature *message, int32_t value);

#pragma mark - TokenMember

typedef GPB_ENUM(TokenMember_FieldNumber) {
  TokenMember_FieldNumber_Id_p = 1,
  TokenMember_FieldNumber_Username = 2,
  TokenMember_FieldNumber_Alias = 3,
};

/**
 * Refers to a Token member by ID or by alias.
 **/
@interface TokenMember : GPBMessage

/** member ID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/** TODO(PR-1161): Rename this when we no longer require backwards compatibility with usernames */
@property(nonatomic, readwrite, copy, null_resettable) NSString *username;

/** alias, such as an email address */
@property(nonatomic, readwrite, strong, null_resettable) Alias *alias;
/** Test to see if @c alias has been set. */
@property(nonatomic, readwrite) BOOL hasAlias;

@end

#pragma mark - TokenPayload

typedef GPB_ENUM(TokenPayload_FieldNumber) {
  TokenPayload_FieldNumber_Version = 1,
  TokenPayload_FieldNumber_RefId = 2,
  TokenPayload_FieldNumber_Issuer = 3,
  TokenPayload_FieldNumber_From = 4,
  TokenPayload_FieldNumber_To = 5,
  TokenPayload_FieldNumber_EffectiveAtMs = 6,
  TokenPayload_FieldNumber_ExpiresAtMs = 7,
  TokenPayload_FieldNumber_Description_p = 8,
  TokenPayload_FieldNumber_Transfer = 9,
  TokenPayload_FieldNumber_Access = 10,
  TokenPayload_FieldNumber_EndorseUntilMs = 11,
  TokenPayload_FieldNumber_ActingAs = 12,
};

typedef GPB_ENUM(TokenPayload_Body_OneOfCase) {
  TokenPayload_Body_OneOfCase_GPBUnsetOneOfCase = 0,
  TokenPayload_Body_OneOfCase_Transfer = 9,
  TokenPayload_Body_OneOfCase_Access = 10,
};

@interface TokenPayload : GPBMessage

/** 1.0 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *version;

/** random string used to de-dupe tokens, set by client. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *refId;

/** Token issuer, bank. */
@property(nonatomic, readwrite, strong, null_resettable) TokenMember *issuer;
/** Test to see if @c issuer has been set. */
@property(nonatomic, readwrite) BOOL hasIssuer;

/** Payer member. */
@property(nonatomic, readwrite, strong, null_resettable) TokenMember *from;
/** Test to see if @c from has been set. */
@property(nonatomic, readwrite) BOOL hasFrom;

/** Payee member. */
@property(nonatomic, readwrite, strong, null_resettable) TokenMember *to;
/** Test to see if @c to has been set. */
@property(nonatomic, readwrite) BOOL hasTo;

/** Optional */
@property(nonatomic, readwrite) int64_t effectiveAtMs;

/**
 * Expiration time. Access tokens ignore this; all access tokens
 * have a 90-day lifespan. For transfer tokens, this is an optional
 * expiration time.
 **/
@property(nonatomic, readwrite) int64_t expiresAtMs;

/** Optional, can be endorsed until this time */
@property(nonatomic, readwrite) int64_t endorseUntilMs;

/** Optional */
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

@property(nonatomic, readonly) TokenPayload_Body_OneOfCase bodyOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) TransferBody *transfer;

@property(nonatomic, readwrite, strong, null_resettable) AccessBody *access;

@property(nonatomic, readwrite, strong, null_resettable) TokenPayload_ActingAs *actingAs;
/** Test to see if @c actingAs has been set. */
@property(nonatomic, readwrite) BOOL hasActingAs;

@end

/**
 * Clears whatever value was set for the oneof 'body'.
 **/
void TokenPayload_ClearBodyOneOfCase(TokenPayload *message);

#pragma mark - TokenPayload_ActingAs

typedef GPB_ENUM(TokenPayload_ActingAs_FieldNumber) {
  TokenPayload_ActingAs_FieldNumber_DisplayName = 1,
  TokenPayload_ActingAs_FieldNumber_RefId = 2,
  TokenPayload_ActingAs_FieldNumber_LogoURL = 3,
  TokenPayload_ActingAs_FieldNumber_SecondaryName = 4,
};

/**
 * If a token is being created on behalf of another party, this
 * field contains a description of that entity.
 **/
@interface TokenPayload_ActingAs : GPBMessage

/** Name of recipient, to be shown to user */
@property(nonatomic, readwrite, copy, null_resettable) NSString *displayName;

/** Optional reference ID of the recipient. Opaque to Token. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *refId;

/** URL pointing to recipient's logo */
@property(nonatomic, readwrite, copy, null_resettable) NSString *logoURL;

/** Optional domain or email of the recipient, to be shown to user along with display_name */
@property(nonatomic, readwrite, copy, null_resettable) NSString *secondaryName;

@end

#pragma mark - ExternalAuthorizationDetails

typedef GPB_ENUM(ExternalAuthorizationDetails_FieldNumber) {
  ExternalAuthorizationDetails_FieldNumber_URL = 1,
  ExternalAuthorizationDetails_FieldNumber_CompletionPattern = 2,
};

@interface ExternalAuthorizationDetails : GPBMessage

/** Display content from this URL to user to prompt for permission */
@property(nonatomic, readwrite, copy, null_resettable) NSString *URL;

/** If user navigates to URL matching this pattern, interaction is complete */
@property(nonatomic, readwrite, copy, null_resettable) NSString *completionPattern;

@end

#pragma mark - TransferBody

typedef GPB_ENUM(TransferBody_FieldNumber) {
  TransferBody_FieldNumber_Redeemer = 1,
  TransferBody_FieldNumber_Instructions = 2,
  TransferBody_FieldNumber_Currency = 4,
  TransferBody_FieldNumber_LifetimeAmount = 5,
  TransferBody_FieldNumber_Amount = 6,
  TransferBody_FieldNumber_AttachmentsArray = 8,
  TransferBody_FieldNumber_Pricing = 9,
};

@interface TransferBody : GPBMessage

/** Redeemer member. */
@property(nonatomic, readwrite, strong, null_resettable) TokenMember *redeemer;
/** Test to see if @c redeemer has been set. */
@property(nonatomic, readwrite) BOOL hasRedeemer;

/** Transfer instructions. */
@property(nonatomic, readwrite, strong, null_resettable) TransferInstructions *instructions;
/** Test to see if @c instructions has been set. */
@property(nonatomic, readwrite) BOOL hasInstructions;

/** Optional: ISO4217, 3 letter currency code such as "USD" or "EUR". */
@property(nonatomic, readwrite, copy, null_resettable) NSString *currency;

/** Optional: Token total lifetime amount. Double. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *lifetimeAmount;

/** Optional: Single token charge request acceptable range. Double. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *amount;

/** Optional: file / data attachments */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Attachment*> *attachmentsArray;
/** The number of items in @c attachmentsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger attachmentsArray_Count;

/** Optional: Transfer fees and fx charges. */
@property(nonatomic, readwrite, strong, null_resettable) Pricing *pricing;
/** Test to see if @c pricing has been set. */
@property(nonatomic, readwrite) BOOL hasPricing;

@end

#pragma mark - AccessBody

typedef GPB_ENUM(AccessBody_FieldNumber) {
  AccessBody_FieldNumber_ResourcesArray = 5,
};

@interface AccessBody : GPBMessage

/** List of resources */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<AccessBody_Resource*> *resourcesArray;
/** The number of items in @c resourcesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger resourcesArray_Count;

@end

#pragma mark - AccessBody_Resource

typedef GPB_ENUM(AccessBody_Resource_FieldNumber) {
  AccessBody_Resource_FieldNumber_AllAddresses = 1,
  AccessBody_Resource_FieldNumber_AllAccounts = 2,
  AccessBody_Resource_FieldNumber_AllTransactions = 3,
  AccessBody_Resource_FieldNumber_AllBalances = 4,
  AccessBody_Resource_FieldNumber_Address = 5,
  AccessBody_Resource_FieldNumber_Account = 6,
  AccessBody_Resource_FieldNumber_Transactions = 7,
  AccessBody_Resource_FieldNumber_Balance = 8,
};

typedef GPB_ENUM(AccessBody_Resource_Resource_OneOfCase) {
  AccessBody_Resource_Resource_OneOfCase_GPBUnsetOneOfCase = 0,
  AccessBody_Resource_Resource_OneOfCase_AllAddresses = 1,
  AccessBody_Resource_Resource_OneOfCase_AllAccounts = 2,
  AccessBody_Resource_Resource_OneOfCase_AllTransactions = 3,
  AccessBody_Resource_Resource_OneOfCase_AllBalances = 4,
  AccessBody_Resource_Resource_OneOfCase_Address = 5,
  AccessBody_Resource_Resource_OneOfCase_Account = 6,
  AccessBody_Resource_Resource_OneOfCase_Transactions = 7,
  AccessBody_Resource_Resource_OneOfCase_Balance = 8,
};

@interface AccessBody_Resource : GPBMessage

@property(nonatomic, readonly) AccessBody_Resource_Resource_OneOfCase resourceOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) AccessBody_Resource_AllAddresses *allAddresses;

@property(nonatomic, readwrite, strong, null_resettable) AccessBody_Resource_AllAccounts *allAccounts;

@property(nonatomic, readwrite, strong, null_resettable) AccessBody_Resource_AllAccountTransactions *allTransactions;

@property(nonatomic, readwrite, strong, null_resettable) AccessBody_Resource_AllAccountBalances *allBalances;

@property(nonatomic, readwrite, strong, null_resettable) AccessBody_Resource_Address *address;

@property(nonatomic, readwrite, strong, null_resettable) AccessBody_Resource_Account *account;

@property(nonatomic, readwrite, strong, null_resettable) AccessBody_Resource_AccountTransactions *transactions;

@property(nonatomic, readwrite, strong, null_resettable) AccessBody_Resource_AccountBalance *balance;

@end

/**
 * Clears whatever value was set for the oneof 'resource'.
 **/
void AccessBody_Resource_ClearResourceOneOfCase(AccessBody_Resource *message);

#pragma mark - AccessBody_Resource_AllAddresses

/**
 * Provides access to all member addresses
 **/
@interface AccessBody_Resource_AllAddresses : GPBMessage

@end

#pragma mark - AccessBody_Resource_Address

typedef GPB_ENUM(AccessBody_Resource_Address_FieldNumber) {
  AccessBody_Resource_Address_FieldNumber_AddressId = 1,
};

/**
 * Provides access to a specific member address
 **/
@interface AccessBody_Resource_Address : GPBMessage

/** ID of address */
@property(nonatomic, readwrite, copy, null_resettable) NSString *addressId;

@end

#pragma mark - AccessBody_Resource_AllAccounts

/**
 * Provides access to all member accounts. Enables getAccounts()
 * to get list of accounts (and also getAccount() on any account).
 **/
@interface AccessBody_Resource_AllAccounts : GPBMessage

@end

#pragma mark - AccessBody_Resource_Account

typedef GPB_ENUM(AccessBody_Resource_Account_FieldNumber) {
  AccessBody_Resource_Account_FieldNumber_AccountId = 1,
};

/**
 * Provides access to basic info about a specific member account
 * (can call getAccount() on this account).
 **/
@interface AccessBody_Resource_Account : GPBMessage

/** ID of account */
@property(nonatomic, readwrite, copy, null_resettable) NSString *accountId;

@end

#pragma mark - AccessBody_Resource_AllAccountTransactions

/**
 * Provides access to member transactions in all accounts
 * Normally used with AllAccounts (to get list of accounts)
 **/
@interface AccessBody_Resource_AllAccountTransactions : GPBMessage

@end

#pragma mark - AccessBody_Resource_AccountTransactions

typedef GPB_ENUM(AccessBody_Resource_AccountTransactions_FieldNumber) {
  AccessBody_Resource_AccountTransactions_FieldNumber_AccountId = 1,
};

/**
 * Provides access to a specific account transactions
 **/
@interface AccessBody_Resource_AccountTransactions : GPBMessage

/** ID of account */
@property(nonatomic, readwrite, copy, null_resettable) NSString *accountId;

@end

#pragma mark - AccessBody_Resource_AllAccountBalances

/**
 * Provides access to member balance on all accounts
 * Normally used with AllAccounts (to get list of accounts)
 **/
@interface AccessBody_Resource_AllAccountBalances : GPBMessage

@end

#pragma mark - AccessBody_Resource_AccountBalance

typedef GPB_ENUM(AccessBody_Resource_AccountBalance_FieldNumber) {
  AccessBody_Resource_AccountBalance_FieldNumber_AccountId = 1,
};

/**
 * Provides access to a specific account's balance
 **/
@interface AccessBody_Resource_AccountBalance : GPBMessage

/** ID of account */
@property(nonatomic, readwrite, copy, null_resettable) NSString *accountId;

@end

#pragma mark - TokenOperationResult

typedef GPB_ENUM(TokenOperationResult_FieldNumber) {
  TokenOperationResult_FieldNumber_Token = 1,
  TokenOperationResult_FieldNumber_Status = 2,
};

/**
 *
 * Token operation status
 **/
@interface TokenOperationResult : GPBMessage

/** Token, perhaps with new signatures */
@property(nonatomic, readwrite, strong, null_resettable) Token *token;
/** Test to see if @c token has been set. */
@property(nonatomic, readwrite) BOOL hasToken;

/** Success/failure status */
@property(nonatomic, readwrite) TokenOperationResult_Status status;

@end

/**
 * Fetches the raw value of a @c TokenOperationResult's @c status property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t TokenOperationResult_Status_RawValue(TokenOperationResult *message);
/**
 * Sets the raw value of an @c TokenOperationResult's @c status property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTokenOperationResult_Status_RawValue(TokenOperationResult *message, int32_t value);

#pragma mark - TokenRequestStatePayload

typedef GPB_ENUM(TokenRequestStatePayload_FieldNumber) {
  TokenRequestStatePayload_FieldNumber_TokenId = 1,
  TokenRequestStatePayload_FieldNumber_State = 2,
};

@interface TokenRequestStatePayload : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *tokenId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *state;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
