// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: account.proto

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

 #import "Account.pbobjc.h"
 #import "Banklink.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - AccountRoot

@implementation AccountRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - AccountRoot_FileDescriptor

static GPBFileDescriptor *AccountRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.common.account"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - PlaintextBankAuthorization

@implementation PlaintextBankAuthorization

@dynamic memberId;
@dynamic accountName;
@dynamic hasAccount, account;
@dynamic expirationMs;

typedef struct PlaintextBankAuthorization__storage_ {
  uint32_t _has_storage_[1];
  NSString *memberId;
  NSString *accountName;
  BankAccount *account;
  int64_t expirationMs;
} PlaintextBankAuthorization__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "memberId",
        .dataTypeSpecific.className = NULL,
        .number = PlaintextBankAuthorization_FieldNumber_MemberId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PlaintextBankAuthorization__storage_, memberId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "accountName",
        .dataTypeSpecific.className = NULL,
        .number = PlaintextBankAuthorization_FieldNumber_AccountName,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PlaintextBankAuthorization__storage_, accountName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "account",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount),
        .number = PlaintextBankAuthorization_FieldNumber_Account,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PlaintextBankAuthorization__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "expirationMs",
        .dataTypeSpecific.className = NULL,
        .number = PlaintextBankAuthorization_FieldNumber_ExpirationMs,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PlaintextBankAuthorization__storage_, expirationMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PlaintextBankAuthorization class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PlaintextBankAuthorization__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AccountTag

@implementation AccountTag

@dynamic key;
@dynamic value;

typedef struct AccountTag__storage_ {
  uint32_t _has_storage_[1];
  NSString *key;
  NSString *value;
} AccountTag__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "key",
        .dataTypeSpecific.className = NULL,
        .number = AccountTag_FieldNumber_Key,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AccountTag__storage_, key),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = AccountTag_FieldNumber_Value,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AccountTag__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AccountTag class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AccountTag__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AccountFeatures

@implementation AccountFeatures

@dynamic supportsPayment;
@dynamic supportsInformation;
@dynamic requiresExternalAuth;
@dynamic supportsSendPayment;
@dynamic supportsReceivePayment;

typedef struct AccountFeatures__storage_ {
  uint32_t _has_storage_[1];
} AccountFeatures__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "supportsPayment",
        .dataTypeSpecific.className = NULL,
        .number = AccountFeatures_FieldNumber_SupportsPayment,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "supportsInformation",
        .dataTypeSpecific.className = NULL,
        .number = AccountFeatures_FieldNumber_SupportsInformation,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "requiresExternalAuth",
        .dataTypeSpecific.className = NULL,
        .number = AccountFeatures_FieldNumber_RequiresExternalAuth,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "supportsSendPayment",
        .dataTypeSpecific.className = NULL,
        .number = AccountFeatures_FieldNumber_SupportsSendPayment,
        .hasIndex = 6,
        .offset = 7,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "supportsReceivePayment",
        .dataTypeSpecific.className = NULL,
        .number = AccountFeatures_FieldNumber_SupportsReceivePayment,
        .hasIndex = 8,
        .offset = 9,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AccountFeatures class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AccountFeatures__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Account

@implementation Account

@dynamic id_p;
@dynamic name;
@dynamic bankId;
@dynamic tagsArray, tagsArray_Count;
@dynamic isLocked;
@dynamic hasAccountFeatures, accountFeatures;
@dynamic lastCacheUpdateMs;
@dynamic nextCacheUpdateMs;

typedef struct Account__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
  NSString *name;
  NSString *bankId;
  NSMutableArray *tagsArray;
  AccountFeatures *accountFeatures;
  int64_t lastCacheUpdateMs;
  int64_t nextCacheUpdateMs;
} Account__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = Account_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Account__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = Account_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Account__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "bankId",
        .dataTypeSpecific.className = NULL,
        .number = Account_FieldNumber_BankId,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Account__storage_, bankId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "tagsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(AccountTag),
        .number = Account_FieldNumber_TagsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Account__storage_, tagsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "isLocked",
        .dataTypeSpecific.className = NULL,
        .number = Account_FieldNumber_IsLocked,
        .hasIndex = 3,
        .offset = 4,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "accountFeatures",
        .dataTypeSpecific.className = GPBStringifySymbol(AccountFeatures),
        .number = Account_FieldNumber_AccountFeatures,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(Account__storage_, accountFeatures),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "lastCacheUpdateMs",
        .dataTypeSpecific.className = NULL,
        .number = Account_FieldNumber_LastCacheUpdateMs,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(Account__storage_, lastCacheUpdateMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "nextCacheUpdateMs",
        .dataTypeSpecific.className = NULL,
        .number = Account_FieldNumber_NextCacheUpdateMs,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(Account__storage_, nextCacheUpdateMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Account class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Account__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BankAccount

@implementation BankAccount

@dynamic accountOneOfCase;
@dynamic token;
@dynamic tokenAuthorization;
@dynamic swift;
@dynamic sepa;
@dynamic ach;
@dynamic bank;
@dynamic fasterPayments;
@dynamic metadata, metadata_Count;
@dynamic hasAccountFeatures, accountFeatures;

typedef struct BankAccount__storage_ {
  uint32_t _has_storage_[2];
  BankAccount_Token *token;
  BankAccount_TokenAuthorization *tokenAuthorization;
  BankAccount_Swift *swift;
  BankAccount_Sepa *sepa;
  BankAccount_Ach *ach;
  BankAccount_Bank *bank;
  NSMutableDictionary *metadata;
  AccountFeatures *accountFeatures;
  BankAccount_FasterPayments *fasterPayments;
} BankAccount__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "token",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount_Token),
        .number = BankAccount_FieldNumber_Token,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(BankAccount__storage_, token),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "tokenAuthorization",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount_TokenAuthorization),
        .number = BankAccount_FieldNumber_TokenAuthorization,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(BankAccount__storage_, tokenAuthorization),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "swift",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount_Swift),
        .number = BankAccount_FieldNumber_Swift,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(BankAccount__storage_, swift),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "sepa",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount_Sepa),
        .number = BankAccount_FieldNumber_Sepa,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(BankAccount__storage_, sepa),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "ach",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount_Ach),
        .number = BankAccount_FieldNumber_Ach,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(BankAccount__storage_, ach),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "bank",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount_Bank),
        .number = BankAccount_FieldNumber_Bank,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(BankAccount__storage_, bank),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "metadata",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_FieldNumber_Metadata,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(BankAccount__storage_, metadata),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "accountFeatures",
        .dataTypeSpecific.className = GPBStringifySymbol(AccountFeatures),
        .number = BankAccount_FieldNumber_AccountFeatures,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BankAccount__storage_, accountFeatures),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "fasterPayments",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAccount_FasterPayments),
        .number = BankAccount_FieldNumber_FasterPayments,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(BankAccount__storage_, fasterPayments),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BankAccount class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BankAccount__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "account",
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

void BankAccount_ClearAccountOneOfCase(BankAccount *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - BankAccount_Token

@implementation BankAccount_Token

@dynamic memberId;
@dynamic accountId;

typedef struct BankAccount_Token__storage_ {
  uint32_t _has_storage_[1];
  NSString *memberId;
  NSString *accountId;
} BankAccount_Token__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "memberId",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_Token_FieldNumber_MemberId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BankAccount_Token__storage_, memberId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "accountId",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_Token_FieldNumber_AccountId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BankAccount_Token__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BankAccount_Token class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BankAccount_Token__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(BankAccount)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BankAccount_TokenAuthorization

@implementation BankAccount_TokenAuthorization

@dynamic hasAuthorization, authorization;

typedef struct BankAccount_TokenAuthorization__storage_ {
  uint32_t _has_storage_[1];
  BankAuthorization *authorization;
} BankAccount_TokenAuthorization__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "authorization",
        .dataTypeSpecific.className = GPBStringifySymbol(BankAuthorization),
        .number = BankAccount_TokenAuthorization_FieldNumber_Authorization,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BankAccount_TokenAuthorization__storage_, authorization),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BankAccount_TokenAuthorization class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BankAccount_TokenAuthorization__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(BankAccount)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BankAccount_Bank

@implementation BankAccount_Bank

@dynamic bankId;

typedef struct BankAccount_Bank__storage_ {
  uint32_t _has_storage_[1];
  NSString *bankId;
} BankAccount_Bank__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "bankId",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_Bank_FieldNumber_BankId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BankAccount_Bank__storage_, bankId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BankAccount_Bank class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BankAccount_Bank__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(BankAccount)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BankAccount_Swift

@implementation BankAccount_Swift

@dynamic bic;
@dynamic account;

typedef struct BankAccount_Swift__storage_ {
  uint32_t _has_storage_[1];
  NSString *bic;
  NSString *account;
} BankAccount_Swift__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "bic",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_Swift_FieldNumber_Bic,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BankAccount_Swift__storage_, bic),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "account",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_Swift_FieldNumber_Account,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BankAccount_Swift__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BankAccount_Swift class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BankAccount_Swift__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(BankAccount)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BankAccount_Sepa

@implementation BankAccount_Sepa

@dynamic iban;
@dynamic bic;

typedef struct BankAccount_Sepa__storage_ {
  uint32_t _has_storage_[1];
  NSString *iban;
  NSString *bic;
} BankAccount_Sepa__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "iban",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_Sepa_FieldNumber_Iban,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BankAccount_Sepa__storage_, iban),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "bic",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_Sepa_FieldNumber_Bic,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BankAccount_Sepa__storage_, bic),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BankAccount_Sepa class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BankAccount_Sepa__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(BankAccount)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BankAccount_Ach

@implementation BankAccount_Ach

@dynamic routing;
@dynamic account;

typedef struct BankAccount_Ach__storage_ {
  uint32_t _has_storage_[1];
  NSString *routing;
  NSString *account;
} BankAccount_Ach__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "routing",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_Ach_FieldNumber_Routing,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BankAccount_Ach__storage_, routing),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "account",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_Ach_FieldNumber_Account,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BankAccount_Ach__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BankAccount_Ach class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BankAccount_Ach__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(BankAccount)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - BankAccount_FasterPayments

@implementation BankAccount_FasterPayments

@dynamic sortCode;
@dynamic accountNumber;

typedef struct BankAccount_FasterPayments__storage_ {
  uint32_t _has_storage_[1];
  NSString *sortCode;
  NSString *accountNumber;
} BankAccount_FasterPayments__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "sortCode",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_FasterPayments_FieldNumber_SortCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BankAccount_FasterPayments__storage_, sortCode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "accountNumber",
        .dataTypeSpecific.className = NULL,
        .number = BankAccount_FasterPayments_FieldNumber_AccountNumber,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BankAccount_FasterPayments__storage_, accountNumber),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BankAccount_FasterPayments class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BankAccount_FasterPayments__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(BankAccount)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
