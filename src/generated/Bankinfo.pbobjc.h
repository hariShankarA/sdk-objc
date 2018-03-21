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

/** Connection allows for retrieval of information */
@property(nonatomic, readwrite) BOOL supportsInformation;

/** Connection requires external authorization for creating transfers */
@property(nonatomic, readwrite) BOOL requiresExternalAuth;

/** Connection allows for payment initiation */
@property(nonatomic, readwrite) BOOL supportsSendPayment;

/** Connection allows for receiving payments */
@property(nonatomic, readwrite) BOOL supportsReceivePayment;

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

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
