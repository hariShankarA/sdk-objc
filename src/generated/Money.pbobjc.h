// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: money.proto

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

@class Fee;
@class FxQuote;
@class FxRate;
@class Money;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - MoneyRoot

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
@interface MoneyRoot : GPBRootObject
@end

#pragma mark - Money

typedef GPB_ENUM(Money_FieldNumber) {
  Money_FieldNumber_Currency = 1,
  Money_FieldNumber_Value = 2,
};

@interface Money : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *currency;

/** double amount in the string format. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *value;

@end

#pragma mark - Fee

typedef GPB_ENUM(Fee_FieldNumber) {
  Fee_FieldNumber_Amount = 1,
  Fee_FieldNumber_Description_p = 2,
};

@interface Fee : GPBMessage

/** The fee amount */
@property(nonatomic, readwrite, strong, null_resettable) Money *amount;
/** Test to see if @c amount has been set. */
@property(nonatomic, readwrite) BOOL hasAmount;

/** The fee description */
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

@end

#pragma mark - FxRate

typedef GPB_ENUM(FxRate_FieldNumber) {
  FxRate_FieldNumber_BaseCurrency = 1,
  FxRate_FieldNumber_QuoteCurrency = 2,
  FxRate_FieldNumber_Rate = 3,
  FxRate_FieldNumber_CreatedAtMs = 5,
};

@interface FxRate : GPBMessage

/** the base amount: 'EUR' in 'EUR/USD' */
@property(nonatomic, readwrite, copy, null_resettable) NSString *baseCurrency;

/** the quote amount: 'USD' in 'EUR/USD' */
@property(nonatomic, readwrite, copy, null_resettable) NSString *quoteCurrency;

/** the fx rate double amount in the string format. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *rate;

/** the time of the fx rate */
@property(nonatomic, readwrite) int64_t createdAtMs;

@end

#pragma mark - FxQuote

typedef GPB_ENUM(FxQuote_FieldNumber) {
  FxQuote_FieldNumber_Id_p = 1,
  FxQuote_FieldNumber_FromAmount = 2,
  FxQuote_FieldNumber_ToAmount = 3,
  FxQuote_FieldNumber_FxRate = 4,
};

@interface FxQuote : GPBMessage

/** the fx quote id */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/** the base amount to be converted */
@property(nonatomic, readwrite, strong, null_resettable) Money *fromAmount;
/** Test to see if @c fromAmount has been set. */
@property(nonatomic, readwrite) BOOL hasFromAmount;

/** the quote amount */
@property(nonatomic, readwrite, strong, null_resettable) Money *toAmount;
/** Test to see if @c toAmount has been set. */
@property(nonatomic, readwrite) BOOL hasToAmount;

/** the fx rate details */
@property(nonatomic, readwrite, strong, null_resettable) FxRate *fxRate;
/** Test to see if @c fxRate has been set. */
@property(nonatomic, readwrite) BOOL hasFxRate;

@end

#pragma mark - TransferQuote

typedef GPB_ENUM(TransferQuote_FieldNumber) {
  TransferQuote_FieldNumber_Id_p = 1,
  TransferQuote_FieldNumber_ReferenceId = 3,
  TransferQuote_FieldNumber_FeesTotal = 4,
  TransferQuote_FieldNumber_FeesArray = 5,
  TransferQuote_FieldNumber_FxQuote = 6,
  TransferQuote_FieldNumber_ExpiresAtMs = 7,
};

@interface TransferQuote : GPBMessage

/** the quote id */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/** The reference id of the quote requester */
@property(nonatomic, readwrite, copy, null_resettable) NSString *referenceId;

/** The total fee amount */
@property(nonatomic, readwrite, strong, null_resettable) Money *feesTotal;
/** Test to see if @c feesTotal has been set. */
@property(nonatomic, readwrite) BOOL hasFeesTotal;

/** A collection of applicable fees */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Fee*> *feesArray;
/** The number of items in @c feesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger feesArray_Count;

/** Optional FX Quote */
@property(nonatomic, readwrite, strong, null_resettable) FxQuote *fxQuote;
/** Test to see if @c fxQuote has been set. */
@property(nonatomic, readwrite) BOOL hasFxQuote;

/** The quote expiration time */
@property(nonatomic, readwrite) int64_t expiresAtMs;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
