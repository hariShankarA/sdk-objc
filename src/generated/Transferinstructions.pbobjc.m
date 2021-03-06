// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: transferinstructions.proto

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

#import "Transferinstructions.pbobjc.h"
#import "Account.pbobjc.h"
#import "Address.pbobjc.h"
#import "Banklink.pbobjc.h"
#import "Security.pbobjc.h"
#import "extensions/Message.pbobjc.h"
#import "extensions/Field.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - TransferinstructionsRoot

@implementation TransferinstructionsRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[FieldRoot extensionRegistry]];
    [registry addExtensions:[MessageRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - TransferinstructionsRoot_FileDescriptor

static GPBFileDescriptor *TransferinstructionsRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.common.transferinstructions"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum PurposeOfPayment

GPBEnumDescriptor *PurposeOfPayment_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Invalid\000Other\000PersonalExpenses\000PurchaseO"
        "fShares\000TransferToYourOwnAccount\000Purchas"
        "eOfProperty\000FamilyMaintenance\000Savings\000";
    static const int32_t values[] = {
        PurposeOfPayment_Invalid,
        PurposeOfPayment_Other,
        PurposeOfPayment_PersonalExpenses,
        PurposeOfPayment_PurchaseOfShares,
        PurposeOfPayment_TransferToYourOwnAccount,
        PurposeOfPayment_PurchaseOfProperty,
        PurposeOfPayment_FamilyMaintenance,
        PurposeOfPayment_Savings,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(PurposeOfPayment)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:PurposeOfPayment_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL PurposeOfPayment_IsValidValue(int32_t value__) {
  switch (value__) {
    case PurposeOfPayment_Invalid:
    case PurposeOfPayment_Other:
    case PurposeOfPayment_PersonalExpenses:
    case PurposeOfPayment_PurchaseOfShares:
    case PurposeOfPayment_TransferToYourOwnAccount:
    case PurposeOfPayment_PurchaseOfProperty:
    case PurposeOfPayment_FamilyMaintenance:
    case PurposeOfPayment_Savings:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum PaymentContext

GPBEnumDescriptor *PaymentContext_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "InvalidContext\000OtherContext\000BillPayment\000"
        "EcommerceGoods\000EcommerceServices\000PersonT"
        "oPerson\000";
    static const int32_t values[] = {
        PaymentContext_InvalidContext,
        PaymentContext_OtherContext,
        PaymentContext_BillPayment,
        PaymentContext_EcommerceGoods,
        PaymentContext_EcommerceServices,
        PaymentContext_PersonToPerson,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(PaymentContext)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:PaymentContext_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL PaymentContext_IsValidValue(int32_t value__) {
  switch (value__) {
    case PaymentContext_InvalidContext:
    case PaymentContext_OtherContext:
    case PaymentContext_BillPayment:
    case PaymentContext_EcommerceGoods:
    case PaymentContext_EcommerceServices:
    case PaymentContext_PersonToPerson:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - CustomerData

@implementation CustomerData

@dynamic legalNamesArray, legalNamesArray_Count;
@dynamic hasAddress, address;

typedef struct CustomerData__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *legalNamesArray;
  Address *address;
} CustomerData__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "legalNamesArray",
        .dataTypeSpecific.className = NULL,
        .number = CustomerData_FieldNumber_LegalNamesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(CustomerData__storage_, legalNamesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "address",
        .dataTypeSpecific.className = GPBStringifySymbol(Address),
        .number = CustomerData_FieldNumber_Address,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CustomerData__storage_, address),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CustomerData class]
                                     rootClass:[TransferinstructionsRoot class]
                                          file:TransferinstructionsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CustomerData__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TransferEndpoint

@implementation TransferEndpoint

@dynamic hasAccount, account;
@dynamic hasCustomerData, customerData;

typedef struct TransferEndpoint__storage_ {
  uint32_t _has_storage_[1];
  BankAccount *account;
  CustomerData *customerData;
} TransferEndpoint__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "account",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount),
        .number = TransferEndpoint_FieldNumber_Account,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TransferEndpoint__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "customerData",
        .dataTypeSpecific.className = GPBStringifySymbol(CustomerData),
        .number = TransferEndpoint_FieldNumber_CustomerData,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TransferEndpoint__storage_, customerData),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TransferEndpoint class]
                                     rootClass:[TransferinstructionsRoot class]
                                          file:TransferinstructionsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TransferEndpoint__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TransferInstructions

@implementation TransferInstructions

@dynamic hasSource, source;
@dynamic destinationsArray, destinationsArray_Count;
@dynamic hasMetadata, metadata;

typedef struct TransferInstructions__storage_ {
  uint32_t _has_storage_[1];
  TransferEndpoint *source;
  NSMutableArray *destinationsArray;
  TransferInstructions_Metadata *metadata;
} TransferInstructions__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "source",
        .dataTypeSpecific.className = GPBStringifySymbol(TransferEndpoint),
        .number = TransferInstructions_FieldNumber_Source,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TransferInstructions__storage_, source),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "destinationsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(TransferEndpoint),
        .number = TransferInstructions_FieldNumber_DestinationsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(TransferInstructions__storage_, destinationsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "metadata",
        .dataTypeSpecific.className = GPBStringifySymbol(TransferInstructions_Metadata),
        .number = TransferInstructions_FieldNumber_Metadata,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TransferInstructions__storage_, metadata),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TransferInstructions class]
                                     rootClass:[TransferinstructionsRoot class]
                                          file:TransferinstructionsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TransferInstructions__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - TransferInstructions_Metadata

@implementation TransferInstructions_Metadata

@dynamic transferPurpose;
@dynamic paymentContext;
@dynamic merchantCategoryCode;
@dynamic merchantCustomerId;
@dynamic hasDeliveryAddress, deliveryAddress;

typedef struct TransferInstructions_Metadata__storage_ {
  uint32_t _has_storage_[1];
  PurposeOfPayment transferPurpose;
  PaymentContext paymentContext;
  NSString *merchantCategoryCode;
  NSString *merchantCustomerId;
  Address *deliveryAddress;
} TransferInstructions_Metadata__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "transferPurpose",
        .dataTypeSpecific.enumDescFunc = PurposeOfPayment_EnumDescriptor,
        .number = TransferInstructions_Metadata_FieldNumber_TransferPurpose,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TransferInstructions_Metadata__storage_, transferPurpose),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "paymentContext",
        .dataTypeSpecific.enumDescFunc = PaymentContext_EnumDescriptor,
        .number = TransferInstructions_Metadata_FieldNumber_PaymentContext,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TransferInstructions_Metadata__storage_, paymentContext),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "merchantCategoryCode",
        .dataTypeSpecific.className = NULL,
        .number = TransferInstructions_Metadata_FieldNumber_MerchantCategoryCode,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(TransferInstructions_Metadata__storage_, merchantCategoryCode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "merchantCustomerId",
        .dataTypeSpecific.className = NULL,
        .number = TransferInstructions_Metadata_FieldNumber_MerchantCustomerId,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(TransferInstructions_Metadata__storage_, merchantCustomerId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "deliveryAddress",
        .dataTypeSpecific.className = GPBStringifySymbol(Address),
        .number = TransferInstructions_Metadata_FieldNumber_DeliveryAddress,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(TransferInstructions_Metadata__storage_, deliveryAddress),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TransferInstructions_Metadata class]
                                     rootClass:[TransferinstructionsRoot class]
                                          file:TransferinstructionsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TransferInstructions_Metadata__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(TransferInstructions)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t TransferInstructions_Metadata_TransferPurpose_RawValue(TransferInstructions_Metadata *message) {
  GPBDescriptor *descriptor = [TransferInstructions_Metadata descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:TransferInstructions_Metadata_FieldNumber_TransferPurpose];
  return GPBGetMessageInt32Field(message, field);
}

void SetTransferInstructions_Metadata_TransferPurpose_RawValue(TransferInstructions_Metadata *message, int32_t value) {
  GPBDescriptor *descriptor = [TransferInstructions_Metadata descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:TransferInstructions_Metadata_FieldNumber_TransferPurpose];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t TransferInstructions_Metadata_PaymentContext_RawValue(TransferInstructions_Metadata *message) {
  GPBDescriptor *descriptor = [TransferInstructions_Metadata descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:TransferInstructions_Metadata_FieldNumber_PaymentContext];
  return GPBGetMessageInt32Field(message, field);
}

void SetTransferInstructions_Metadata_PaymentContext_RawValue(TransferInstructions_Metadata *message, int32_t value) {
  GPBDescriptor *descriptor = [TransferInstructions_Metadata descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:TransferInstructions_Metadata_FieldNumber_PaymentContext];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
