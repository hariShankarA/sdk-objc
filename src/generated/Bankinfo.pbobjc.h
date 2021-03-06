// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: bankinfo.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - BankinfoRoot

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
@interface BankinfoRoot : GPBRootObject
@end

#pragma mark - Bank

typedef GPB_ENUM(Bank_FieldNumber) {
  Bank_FieldNumber_Id_p = 1,
  Bank_FieldNumber_Name = 2,
  Bank_FieldNumber_LogoUri = 3,
  Bank_FieldNumber_FullLogoUri = 4,
  Bank_FieldNumber_SupportsAppless = 5,
  Bank_FieldNumber_SupportsInformation = 7,
  Bank_FieldNumber_RequiresExternalAuth = 8,
  Bank_FieldNumber_SupportsSendPayment = 9,
  Bank_FieldNumber_SupportsReceivePayment = 10,
  Bank_FieldNumber_Provider = 11,
  Bank_FieldNumber_Country = 12,
  Bank_FieldNumber_Identifier = 13,
  Bank_FieldNumber_RequiresLegacyTransfer = 14,
  Bank_FieldNumber_SupportsGuestCheckout = 15,
};

@interface Bank : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/** Square bank avatar icon */
@property(nonatomic, readwrite, copy, null_resettable) NSString *logoUri;

/** Full size bank icon */
@property(nonatomic, readwrite, copy, null_resettable) NSString *fullLogoUri;

/** Works with appless payments */
@property(nonatomic, readwrite) BOOL supportsAppless;

/** Connection supports guest checkout */
@property(nonatomic, readwrite) BOOL supportsGuestCheckout;

/** Connection allows for retrieval of information */
@property(nonatomic, readwrite) BOOL supportsInformation;

/** Connection requires external authorization for creating transfers */
@property(nonatomic, readwrite) BOOL requiresExternalAuth;

/** Connection allows for payment initiation */
@property(nonatomic, readwrite) BOOL supportsSendPayment;

/** Connection allows for receiving payments */
@property(nonatomic, readwrite) BOOL supportsReceivePayment;

/** Connection only supports immediate redemption of transfers */
@property(nonatomic, readwrite) BOOL requiresLegacyTransfer;

/** Provider of the bank, e.g. Yodlee, FinApi, Token */
@property(nonatomic, readwrite, copy, null_resettable) NSString *provider;

/** The ISO 3166-1 alpha-2 two letter country code in upper case. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *country;

/** Optional identifier of the bank, not guaranteed to be unique across all banks. BLZ for German banks. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *identifier;

@end

#pragma mark - BankInfo

typedef GPB_ENUM(BankInfo_FieldNumber) {
  BankInfo_FieldNumber_LinkingUri = 1,
  BankInfo_FieldNumber_RedirectUriRegex = 2,
  BankInfo_FieldNumber_BankLinkingUri = 3,
  BankInfo_FieldNumber_RealmArray = 4,
};

/**
 * Depending on how user can interact with bank,
 * different fields will have values.
 *   BankAuthorization JSON: User interacts with web site, goes to JSON uri
 *   OAuth: User interacts with web site, gets OAuth access token
 **/
@interface BankInfo : GPBMessage

/** BankAuthorization JSON starting URI */
@property(nonatomic, readwrite, copy, null_resettable) NSString *linkingUri;

/** BankAuthorization JSON success URI pattern */
@property(nonatomic, readwrite, copy, null_resettable) NSString *redirectUriRegex;

/** OAuth starting URI */
@property(nonatomic, readwrite, copy, null_resettable) NSString *bankLinkingUri;

/** (Optional) Realms of the bank */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *realmArray;
/** The number of items in @c realmArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger realmArray_Count;

@end

#pragma mark - Paging

typedef GPB_ENUM(Paging_FieldNumber) {
  Paging_FieldNumber_Page = 1,
  Paging_FieldNumber_PerPage = 2,
  Paging_FieldNumber_PageCount = 3,
  Paging_FieldNumber_TotalCount = 4,
};

@interface Paging : GPBMessage

/** Index of current page */
@property(nonatomic, readwrite) int32_t page;

/** Number of records per page */
@property(nonatomic, readwrite) int32_t perPage;

/** Number of pages in total */
@property(nonatomic, readwrite) int32_t pageCount;

/** Number of records in total */
@property(nonatomic, readwrite) int32_t totalCount;

@end

#pragma mark - BankFilter

typedef GPB_ENUM(BankFilter_FieldNumber) {
  BankFilter_FieldNumber_Provider = 1,
  BankFilter_FieldNumber_TppId = 2,
  BankFilter_FieldNumber_DestinationCountry = 3,
  BankFilter_FieldNumber_Country = 4,
  BankFilter_FieldNumber_IdsArray = 5,
  BankFilter_FieldNumber_Search = 6,
};

@interface BankFilter : GPBMessage

/** (Optional) Filter for banks whose 'provider' matches the provider (case-insensitive) */
@property(nonatomic, readwrite, copy, null_resettable) NSString *provider;

/** (Optional) Filter for banks which are integrated with the TPP */
@property(nonatomic, readwrite, copy, null_resettable) NSString *tppId;

/** (Optional) Filter for banks that support sending to the destination country */
@property(nonatomic, readwrite, copy, null_resettable) NSString *destinationCountry;

/** (Optional) Filter for banks whose 'country' matches the given ISO 3166-1 alpha-2 country code (case-insensitive) */
@property(nonatomic, readwrite, copy, null_resettable) NSString *country;

/** (Optional) Filter for banks whose 'id' matches any one of the given ids (case-insensitive). Can be at most 1000. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *idsArray;
/** The number of items in @c idsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger idsArray_Count;

/** (Optional) Filter for banks whose 'name' or 'identifier' contains the given search string (case-insensitive) */
@property(nonatomic, readwrite, copy, null_resettable) NSString *search;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
