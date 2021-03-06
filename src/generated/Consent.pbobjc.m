// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: consent.proto

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

#import "Consent.pbobjc.h"
#import "Account.pbobjc.h"
#import "extensions/Field.pbobjc.h"
#import "Money.pbobjc.h"
#import "Token.pbobjc.h"
#import "Transferinstructions.pbobjc.h"
#import "extensions/Message.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - ConsentRoot

@implementation ConsentRoot

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

#pragma mark - ConsentRoot_FileDescriptor

static GPBFileDescriptor *ConsentRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.common.consent"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Consent

@implementation Consent

@dynamic typeOneOfCase;
@dynamic id_p;
@dynamic hasBeneficiary, beneficiary;
@dynamic memberId;
@dynamic informationAccess;
@dynamic payment;

typedef struct Consent__storage_ {
  uint32_t _has_storage_[2];
  NSString *id_p;
  Consent_Beneficiary *beneficiary;
  NSString *memberId;
  Consent_InformationAccess *informationAccess;
  Consent_Payment *payment;
} Consent__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = Consent_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Consent__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "beneficiary",
        .dataTypeSpecific.className = GPBStringifySymbol(Consent_Beneficiary),
        .number = Consent_FieldNumber_Beneficiary,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Consent__storage_, beneficiary),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "memberId",
        .dataTypeSpecific.className = NULL,
        .number = Consent_FieldNumber_MemberId,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Consent__storage_, memberId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "informationAccess",
        .dataTypeSpecific.className = GPBStringifySymbol(Consent_InformationAccess),
        .number = Consent_FieldNumber_InformationAccess,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Consent__storage_, informationAccess),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "payment",
        .dataTypeSpecific.className = GPBStringifySymbol(Consent_Payment),
        .number = Consent_FieldNumber_Payment,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Consent__storage_, payment),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Consent class]
                                     rootClass:[ConsentRoot class]
                                          file:ConsentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Consent__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "type",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void Consent_ClearTypeOneOfCase(Consent *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - Consent_InformationAccess

@implementation Consent_InformationAccess

@dynamic resourceAccessArray, resourceAccessArray_Count;

typedef struct Consent_InformationAccess__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *resourceAccessArray;
} Consent_InformationAccess__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "resourceAccessArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Consent_InformationAccess_ResourceAccess),
        .number = Consent_InformationAccess_FieldNumber_ResourceAccessArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Consent_InformationAccess__storage_, resourceAccessArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Consent_InformationAccess class]
                                     rootClass:[ConsentRoot class]
                                          file:ConsentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Consent_InformationAccess__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(Consent)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Consent_InformationAccess_ResourceAccess

@implementation Consent_InformationAccess_ResourceAccess

@dynamic hasAccount, account;
@dynamic resourcesArray, resourcesArray_Count;

typedef struct Consent_InformationAccess_ResourceAccess__storage_ {
  uint32_t _has_storage_[1];
  BankAccount *account;
  GPBEnumArray *resourcesArray;
} Consent_InformationAccess_ResourceAccess__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "account",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount),
        .number = Consent_InformationAccess_ResourceAccess_FieldNumber_Account,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Consent_InformationAccess_ResourceAccess__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "resourcesArray",
        .dataTypeSpecific.enumDescFunc = Consent_InformationAccess_ResourceAccess_ResourceType_EnumDescriptor,
        .number = Consent_InformationAccess_ResourceAccess_FieldNumber_ResourcesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Consent_InformationAccess_ResourceAccess__storage_, resourcesArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Consent_InformationAccess_ResourceAccess class]
                                     rootClass:[ConsentRoot class]
                                          file:ConsentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Consent_InformationAccess_ResourceAccess__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(Consent_InformationAccess)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Enum Consent_InformationAccess_ResourceAccess_ResourceType

GPBEnumDescriptor *Consent_InformationAccess_ResourceAccess_ResourceType_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "InvalidResourceType\000Account\000Balance\000Tran"
        "sactions\000TransferDestinations\000FundsConfi"
        "rmations\000";
    static const int32_t values[] = {
        Consent_InformationAccess_ResourceAccess_ResourceType_InvalidResourceType,
        Consent_InformationAccess_ResourceAccess_ResourceType_Account,
        Consent_InformationAccess_ResourceAccess_ResourceType_Balance,
        Consent_InformationAccess_ResourceAccess_ResourceType_Transactions,
        Consent_InformationAccess_ResourceAccess_ResourceType_TransferDestinations,
        Consent_InformationAccess_ResourceAccess_ResourceType_FundsConfirmations,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Consent_InformationAccess_ResourceAccess_ResourceType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Consent_InformationAccess_ResourceAccess_ResourceType_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Consent_InformationAccess_ResourceAccess_ResourceType_IsValidValue(int32_t value__) {
  switch (value__) {
    case Consent_InformationAccess_ResourceAccess_ResourceType_InvalidResourceType:
    case Consent_InformationAccess_ResourceAccess_ResourceType_Account:
    case Consent_InformationAccess_ResourceAccess_ResourceType_Balance:
    case Consent_InformationAccess_ResourceAccess_ResourceType_Transactions:
    case Consent_InformationAccess_ResourceAccess_ResourceType_TransferDestinations:
    case Consent_InformationAccess_ResourceAccess_ResourceType_FundsConfirmations:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Consent_Payment

@implementation Consent_Payment

@dynamic hasAccount, account;
@dynamic hasLifetimeAmount, lifetimeAmount;
@dynamic hasAmount, amount;
@dynamic destinationsArray, destinationsArray_Count;

typedef struct Consent_Payment__storage_ {
  uint32_t _has_storage_[1];
  BankAccount *account;
  Money *lifetimeAmount;
  Money *amount;
  NSMutableArray *destinationsArray;
} Consent_Payment__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "account",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount),
        .number = Consent_Payment_FieldNumber_Account,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Consent_Payment__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "lifetimeAmount",
        .dataTypeSpecific.className = GPBStringifySymbol(Money),
        .number = Consent_Payment_FieldNumber_LifetimeAmount,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Consent_Payment__storage_, lifetimeAmount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "amount",
        .dataTypeSpecific.className = GPBStringifySymbol(Money),
        .number = Consent_Payment_FieldNumber_Amount,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Consent_Payment__storage_, amount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "destinationsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(TransferEndpoint),
        .number = Consent_Payment_FieldNumber_DestinationsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Consent_Payment__storage_, destinationsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Consent_Payment class]
                                     rootClass:[ConsentRoot class]
                                          file:ConsentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Consent_Payment__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(Consent)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Consent_Beneficiary

@implementation Consent_Beneficiary

@dynamic hasMember, member;
@dynamic hasActingAs, actingAs;

typedef struct Consent_Beneficiary__storage_ {
  uint32_t _has_storage_[1];
  TokenMember *member;
  ActingAs *actingAs;
} Consent_Beneficiary__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "member",
        .dataTypeSpecific.className = GPBStringifySymbol(TokenMember),
        .number = Consent_Beneficiary_FieldNumber_Member,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Consent_Beneficiary__storage_, member),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "actingAs",
        .dataTypeSpecific.className = GPBStringifySymbol(ActingAs),
        .number = Consent_Beneficiary_FieldNumber_ActingAs,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Consent_Beneficiary__storage_, actingAs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Consent_Beneficiary class]
                                     rootClass:[ConsentRoot class]
                                          file:ConsentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Consent_Beneficiary__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(Consent)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
