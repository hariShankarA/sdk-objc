// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: pricing.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <stdatomic.h>

#import "Pricing.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - PricingRoot

@implementation PricingRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - PricingRoot_FileDescriptor

static GPBFileDescriptor *PricingRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.common.pricing"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum FeeResponsibility

GPBEnumDescriptor *FeeResponsibility_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "InvalidFee\000SourceFee\000DestinationFee\000Shar"
        "edFee\000";
    static const int32_t values[] = {
        FeeResponsibility_InvalidFee,
        FeeResponsibility_SourceFee,
        FeeResponsibility_DestinationFee,
        FeeResponsibility_SharedFee,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(FeeResponsibility)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:FeeResponsibility_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL FeeResponsibility_IsValidValue(int32_t value__) {
  switch (value__) {
    case FeeResponsibility_InvalidFee:
    case FeeResponsibility_SourceFee:
    case FeeResponsibility_DestinationFee:
    case FeeResponsibility_SharedFee:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum FxResponsibility

GPBEnumDescriptor *FxResponsibility_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "InvalidFx\000SourceFx\000SharedFx\000";
    static const int32_t values[] = {
        FxResponsibility_InvalidFx,
        FxResponsibility_SourceFx,
        FxResponsibility_SharedFx,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(FxResponsibility)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:FxResponsibility_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL FxResponsibility_IsValidValue(int32_t value__) {
  switch (value__) {
    case FxResponsibility_InvalidFx:
    case FxResponsibility_SourceFx:
    case FxResponsibility_SharedFx:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - TransferQuote

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-implementations"

@implementation TransferQuote

@dynamic id_p;
@dynamic accountCurrency;
@dynamic feesTotal;
@dynamic feesArray, feesArray_Count;
@dynamic ratesArray, ratesArray_Count;
@dynamic expiresAtMs;

typedef struct TransferQuote__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
  NSString *accountCurrency;
  NSString *feesTotal;
  NSMutableArray *feesArray;
  NSMutableArray *ratesArray;
  int64_t expiresAtMs;
} TransferQuote__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = TransferQuote_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TransferQuote__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "accountCurrency",
        .dataTypeSpecific.className = NULL,
        .number = TransferQuote_FieldNumber_AccountCurrency,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TransferQuote__storage_, accountCurrency),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "feesTotal",
        .dataTypeSpecific.className = NULL,
        .number = TransferQuote_FieldNumber_FeesTotal,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(TransferQuote__storage_, feesTotal),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "feesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(TransferQuote_Fee),
        .number = TransferQuote_FieldNumber_FeesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(TransferQuote__storage_, feesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "ratesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(TransferQuote_FxRate),
        .number = TransferQuote_FieldNumber_RatesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(TransferQuote__storage_, ratesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "expiresAtMs",
        .dataTypeSpecific.className = NULL,
        .number = TransferQuote_FieldNumber_ExpiresAtMs,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(TransferQuote__storage_, expiresAtMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TransferQuote class]
                                     rootClass:[PricingRoot class]
                                          file:PricingRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TransferQuote__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma clang diagnostic pop

#pragma mark - TransferQuote_Fee

@implementation TransferQuote_Fee

@dynamic amount;
@dynamic description_p;

typedef struct TransferQuote_Fee__storage_ {
  uint32_t _has_storage_[1];
  NSString *amount;
  NSString *description_p;
} TransferQuote_Fee__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "amount",
        .dataTypeSpecific.className = NULL,
        .number = TransferQuote_Fee_FieldNumber_Amount,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TransferQuote_Fee__storage_, amount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = TransferQuote_Fee_FieldNumber_Description_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TransferQuote_Fee__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TransferQuote_Fee class]
                                     rootClass:[PricingRoot class]
                                          file:PricingRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TransferQuote_Fee__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(TransferQuote)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TransferQuote_FxRate

@implementation TransferQuote_FxRate

@dynamic baseCurrency;
@dynamic quoteCurrency;
@dynamic rate;

typedef struct TransferQuote_FxRate__storage_ {
  uint32_t _has_storage_[1];
  NSString *baseCurrency;
  NSString *quoteCurrency;
  NSString *rate;
} TransferQuote_FxRate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "baseCurrency",
        .dataTypeSpecific.className = NULL,
        .number = TransferQuote_FxRate_FieldNumber_BaseCurrency,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TransferQuote_FxRate__storage_, baseCurrency),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "quoteCurrency",
        .dataTypeSpecific.className = NULL,
        .number = TransferQuote_FxRate_FieldNumber_QuoteCurrency,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TransferQuote_FxRate__storage_, quoteCurrency),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "rate",
        .dataTypeSpecific.className = NULL,
        .number = TransferQuote_FxRate_FieldNumber_Rate,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(TransferQuote_FxRate__storage_, rate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TransferQuote_FxRate class]
                                     rootClass:[PricingRoot class]
                                          file:PricingRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TransferQuote_FxRate__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(TransferQuote)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Pricing

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-implementations"

@implementation Pricing

@dynamic hasSourceQuote, sourceQuote;
@dynamic hasDestinationQuote, destinationQuote;
@dynamic hasInstructions, instructions;

typedef struct Pricing__storage_ {
  uint32_t _has_storage_[1];
  TransferQuote *sourceQuote;
  TransferQuote *destinationQuote;
  PricingInstructions *instructions;
} Pricing__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "sourceQuote",
        .dataTypeSpecific.className = GPBStringifySymbol(TransferQuote),
        .number = Pricing_FieldNumber_SourceQuote,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Pricing__storage_, sourceQuote),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "destinationQuote",
        .dataTypeSpecific.className = GPBStringifySymbol(TransferQuote),
        .number = Pricing_FieldNumber_DestinationQuote,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Pricing__storage_, destinationQuote),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "instructions",
        .dataTypeSpecific.className = GPBStringifySymbol(PricingInstructions),
        .number = Pricing_FieldNumber_Instructions,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Pricing__storage_, instructions),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Pricing class]
                                     rootClass:[PricingRoot class]
                                          file:PricingRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Pricing__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma clang diagnostic pop

#pragma mark - PricingInstructions

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-implementations"

@implementation PricingInstructions

@dynamic feesPaidBy;
@dynamic fxPerformedBy;

typedef struct PricingInstructions__storage_ {
  uint32_t _has_storage_[1];
  FeeResponsibility feesPaidBy;
  FxResponsibility fxPerformedBy;
} PricingInstructions__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "feesPaidBy",
        .dataTypeSpecific.enumDescFunc = FeeResponsibility_EnumDescriptor,
        .number = PricingInstructions_FieldNumber_FeesPaidBy,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PricingInstructions__storage_, feesPaidBy),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "fxPerformedBy",
        .dataTypeSpecific.enumDescFunc = FxResponsibility_EnumDescriptor,
        .number = PricingInstructions_FieldNumber_FxPerformedBy,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PricingInstructions__storage_, fxPerformedBy),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PricingInstructions class]
                                     rootClass:[PricingRoot class]
                                          file:PricingRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PricingInstructions__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma clang diagnostic pop

int32_t PricingInstructions_FeesPaidBy_RawValue(PricingInstructions *message) {
  GPBDescriptor *descriptor = [PricingInstructions descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PricingInstructions_FieldNumber_FeesPaidBy];
  return GPBGetMessageInt32Field(message, field);
}

void SetPricingInstructions_FeesPaidBy_RawValue(PricingInstructions *message, int32_t value) {
  GPBDescriptor *descriptor = [PricingInstructions descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PricingInstructions_FieldNumber_FeesPaidBy];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t PricingInstructions_FxPerformedBy_RawValue(PricingInstructions *message) {
  GPBDescriptor *descriptor = [PricingInstructions descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PricingInstructions_FieldNumber_FxPerformedBy];
  return GPBGetMessageInt32Field(message, field);
}

void SetPricingInstructions_FxPerformedBy_RawValue(PricingInstructions *message, int32_t value) {
  GPBDescriptor *descriptor = [PricingInstructions descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PricingInstructions_FieldNumber_FxPerformedBy];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
