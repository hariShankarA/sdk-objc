// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: providerspecific.proto

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

#import "Providerspecific.pbobjc.h"
#import "extensions/Message.pbobjc.h"
#import "Address.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - ProviderspecificRoot

@implementation ProviderspecificRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[MessageRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - ProviderspecificRoot_FileDescriptor

static GPBFileDescriptor *ProviderspecificRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.common.providerspecific"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - ProviderAccountDetails

@implementation ProviderAccountDetails

@dynamic detailsOneOfCase;
@dynamic cma9AccountDetails;

typedef struct ProviderAccountDetails__storage_ {
  uint32_t _has_storage_[2];
  Cma9AccountDetails *cma9AccountDetails;
} ProviderAccountDetails__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "cma9AccountDetails",
        .dataTypeSpecific.className = GPBStringifySymbol(Cma9AccountDetails),
        .number = ProviderAccountDetails_FieldNumber_Cma9AccountDetails,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(ProviderAccountDetails__storage_, cma9AccountDetails),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ProviderAccountDetails class]
                                     rootClass:[ProviderspecificRoot class]
                                          file:ProviderspecificRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ProviderAccountDetails__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "details",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void ProviderAccountDetails_ClearDetailsOneOfCase(ProviderAccountDetails *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - Cma9AccountDetails

@implementation Cma9AccountDetails

@dynamic partyId;
@dynamic partyNumber;
@dynamic partyType;
@dynamic name;
@dynamic emailAddress;
@dynamic phone;
@dynamic mobile;
@dynamic addressArray, addressArray_Count;
@dynamic accountType;
@dynamic accountSubtype;
@dynamic description_p;

typedef struct Cma9AccountDetails__storage_ {
  uint32_t _has_storage_[1];
  Cma9AccountDetails_PartyType partyType;
  Cma9AccountDetails_AccountType accountType;
  Cma9AccountDetails_AccountSubtype accountSubtype;
  NSString *partyId;
  NSString *partyNumber;
  NSString *name;
  NSString *emailAddress;
  NSString *phone;
  NSString *mobile;
  NSMutableArray *addressArray;
  NSString *description_p;
} Cma9AccountDetails__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "partyId",
        .dataTypeSpecific.className = NULL,
        .number = Cma9AccountDetails_FieldNumber_PartyId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, partyId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "partyNumber",
        .dataTypeSpecific.className = NULL,
        .number = Cma9AccountDetails_FieldNumber_PartyNumber,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, partyNumber),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "partyType",
        .dataTypeSpecific.enumDescFunc = Cma9AccountDetails_PartyType_EnumDescriptor,
        .number = Cma9AccountDetails_FieldNumber_PartyType,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, partyType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = Cma9AccountDetails_FieldNumber_Name,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "emailAddress",
        .dataTypeSpecific.className = NULL,
        .number = Cma9AccountDetails_FieldNumber_EmailAddress,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, emailAddress),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "phone",
        .dataTypeSpecific.className = NULL,
        .number = Cma9AccountDetails_FieldNumber_Phone,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, phone),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = Cma9AccountDetails_FieldNumber_Mobile,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "addressArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Cma9AccountDetails_Cma9Address),
        .number = Cma9AccountDetails_FieldNumber_AddressArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, addressArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "accountType",
        .dataTypeSpecific.enumDescFunc = Cma9AccountDetails_AccountType_EnumDescriptor,
        .number = Cma9AccountDetails_FieldNumber_AccountType,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, accountType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "accountSubtype",
        .dataTypeSpecific.enumDescFunc = Cma9AccountDetails_AccountSubtype_EnumDescriptor,
        .number = Cma9AccountDetails_FieldNumber_AccountSubtype,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, accountSubtype),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = Cma9AccountDetails_FieldNumber_Description_p,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(Cma9AccountDetails__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Cma9AccountDetails class]
                                     rootClass:[ProviderspecificRoot class]
                                          file:ProviderspecificRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Cma9AccountDetails__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Cma9AccountDetails_PartyType_RawValue(Cma9AccountDetails *message) {
  GPBDescriptor *descriptor = [Cma9AccountDetails descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Cma9AccountDetails_FieldNumber_PartyType];
  return GPBGetMessageInt32Field(message, field);
}

void SetCma9AccountDetails_PartyType_RawValue(Cma9AccountDetails *message, int32_t value) {
  GPBDescriptor *descriptor = [Cma9AccountDetails descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Cma9AccountDetails_FieldNumber_PartyType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t Cma9AccountDetails_AccountType_RawValue(Cma9AccountDetails *message) {
  GPBDescriptor *descriptor = [Cma9AccountDetails descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Cma9AccountDetails_FieldNumber_AccountType];
  return GPBGetMessageInt32Field(message, field);
}

void SetCma9AccountDetails_AccountType_RawValue(Cma9AccountDetails *message, int32_t value) {
  GPBDescriptor *descriptor = [Cma9AccountDetails descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Cma9AccountDetails_FieldNumber_AccountType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t Cma9AccountDetails_AccountSubtype_RawValue(Cma9AccountDetails *message) {
  GPBDescriptor *descriptor = [Cma9AccountDetails descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Cma9AccountDetails_FieldNumber_AccountSubtype];
  return GPBGetMessageInt32Field(message, field);
}

void SetCma9AccountDetails_AccountSubtype_RawValue(Cma9AccountDetails *message, int32_t value) {
  GPBDescriptor *descriptor = [Cma9AccountDetails descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Cma9AccountDetails_FieldNumber_AccountSubtype];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum Cma9AccountDetails_PartyType

GPBEnumDescriptor *Cma9AccountDetails_PartyType_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "InvalidPartyType\000Delegate\000Joint\000Sole\000";
    static const int32_t values[] = {
        Cma9AccountDetails_PartyType_InvalidPartyType,
        Cma9AccountDetails_PartyType_Delegate,
        Cma9AccountDetails_PartyType_Joint,
        Cma9AccountDetails_PartyType_Sole,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Cma9AccountDetails_PartyType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Cma9AccountDetails_PartyType_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Cma9AccountDetails_PartyType_IsValidValue(int32_t value__) {
  switch (value__) {
    case Cma9AccountDetails_PartyType_InvalidPartyType:
    case Cma9AccountDetails_PartyType_Delegate:
    case Cma9AccountDetails_PartyType_Joint:
    case Cma9AccountDetails_PartyType_Sole:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum Cma9AccountDetails_AddressType

GPBEnumDescriptor *Cma9AccountDetails_AddressType_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "InvalidAddressType\000Business\000Corresponden"
        "ce\000Deliveryto\000Mailto\000Pobox\000Postal\000Reside"
        "ntial\000Statement\000";
    static const int32_t values[] = {
        Cma9AccountDetails_AddressType_InvalidAddressType,
        Cma9AccountDetails_AddressType_Business,
        Cma9AccountDetails_AddressType_Correspondence,
        Cma9AccountDetails_AddressType_Deliveryto,
        Cma9AccountDetails_AddressType_Mailto,
        Cma9AccountDetails_AddressType_Pobox,
        Cma9AccountDetails_AddressType_Postal,
        Cma9AccountDetails_AddressType_Residential,
        Cma9AccountDetails_AddressType_Statement,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Cma9AccountDetails_AddressType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Cma9AccountDetails_AddressType_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Cma9AccountDetails_AddressType_IsValidValue(int32_t value__) {
  switch (value__) {
    case Cma9AccountDetails_AddressType_InvalidAddressType:
    case Cma9AccountDetails_AddressType_Business:
    case Cma9AccountDetails_AddressType_Correspondence:
    case Cma9AccountDetails_AddressType_Deliveryto:
    case Cma9AccountDetails_AddressType_Mailto:
    case Cma9AccountDetails_AddressType_Pobox:
    case Cma9AccountDetails_AddressType_Postal:
    case Cma9AccountDetails_AddressType_Residential:
    case Cma9AccountDetails_AddressType_Statement:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum Cma9AccountDetails_AccountType

GPBEnumDescriptor *Cma9AccountDetails_AccountType_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "InvalidAccountType\000BusinessAccount\000Perso"
        "nalAccount\000";
    static const int32_t values[] = {
        Cma9AccountDetails_AccountType_InvalidAccountType,
        Cma9AccountDetails_AccountType_BusinessAccount,
        Cma9AccountDetails_AccountType_PersonalAccount,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Cma9AccountDetails_AccountType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Cma9AccountDetails_AccountType_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Cma9AccountDetails_AccountType_IsValidValue(int32_t value__) {
  switch (value__) {
    case Cma9AccountDetails_AccountType_InvalidAccountType:
    case Cma9AccountDetails_AccountType_BusinessAccount:
    case Cma9AccountDetails_AccountType_PersonalAccount:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum Cma9AccountDetails_AccountSubtype

GPBEnumDescriptor *Cma9AccountDetails_AccountSubtype_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "InvalidAccountSubtype\000ChargeCard\000CreditC"
        "ard\000CurrentAccount\000Emoney\000Loan\000Mortgage\000"
        "PrepaidCard\000Savings\000";
    static const int32_t values[] = {
        Cma9AccountDetails_AccountSubtype_InvalidAccountSubtype,
        Cma9AccountDetails_AccountSubtype_ChargeCard,
        Cma9AccountDetails_AccountSubtype_CreditCard,
        Cma9AccountDetails_AccountSubtype_CurrentAccount,
        Cma9AccountDetails_AccountSubtype_Emoney,
        Cma9AccountDetails_AccountSubtype_Loan,
        Cma9AccountDetails_AccountSubtype_Mortgage,
        Cma9AccountDetails_AccountSubtype_PrepaidCard,
        Cma9AccountDetails_AccountSubtype_Savings,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Cma9AccountDetails_AccountSubtype)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Cma9AccountDetails_AccountSubtype_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Cma9AccountDetails_AccountSubtype_IsValidValue(int32_t value__) {
  switch (value__) {
    case Cma9AccountDetails_AccountSubtype_InvalidAccountSubtype:
    case Cma9AccountDetails_AccountSubtype_ChargeCard:
    case Cma9AccountDetails_AccountSubtype_CreditCard:
    case Cma9AccountDetails_AccountSubtype_CurrentAccount:
    case Cma9AccountDetails_AccountSubtype_Emoney:
    case Cma9AccountDetails_AccountSubtype_Loan:
    case Cma9AccountDetails_AccountSubtype_Mortgage:
    case Cma9AccountDetails_AccountSubtype_PrepaidCard:
    case Cma9AccountDetails_AccountSubtype_Savings:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Cma9AccountDetails_Cma9Address

@implementation Cma9AccountDetails_Cma9Address

@dynamic addressType;
@dynamic hasAddress, address;

typedef struct Cma9AccountDetails_Cma9Address__storage_ {
  uint32_t _has_storage_[1];
  Cma9AccountDetails_AddressType addressType;
  Address *address;
} Cma9AccountDetails_Cma9Address__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "addressType",
        .dataTypeSpecific.enumDescFunc = Cma9AccountDetails_AddressType_EnumDescriptor,
        .number = Cma9AccountDetails_Cma9Address_FieldNumber_AddressType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Cma9AccountDetails_Cma9Address__storage_, addressType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "address",
        .dataTypeSpecific.className = GPBStringifySymbol(Address),
        .number = Cma9AccountDetails_Cma9Address_FieldNumber_Address,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Cma9AccountDetails_Cma9Address__storage_, address),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Cma9AccountDetails_Cma9Address class]
                                     rootClass:[ProviderspecificRoot class]
                                          file:ProviderspecificRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Cma9AccountDetails_Cma9Address__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(Cma9AccountDetails)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Cma9AccountDetails_Cma9Address_AddressType_RawValue(Cma9AccountDetails_Cma9Address *message) {
  GPBDescriptor *descriptor = [Cma9AccountDetails_Cma9Address descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Cma9AccountDetails_Cma9Address_FieldNumber_AddressType];
  return GPBGetMessageInt32Field(message, field);
}

void SetCma9AccountDetails_Cma9Address_AddressType_RawValue(Cma9AccountDetails_Cma9Address *message, int32_t value) {
  GPBDescriptor *descriptor = [Cma9AccountDetails_Cma9Address descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Cma9AccountDetails_Cma9Address_FieldNumber_AddressType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
