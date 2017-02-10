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
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - AccountRoot

@implementation AccountRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

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

#pragma mark - AccountLinkPayload

@implementation AccountLinkPayload

@dynamic username;
@dynamic accountName;
@dynamic accountNumber;
@dynamic expirationMs;

typedef struct AccountLinkPayload__storage_ {
  uint32_t _has_storage_[1];
  NSString *username;
  NSString *accountName;
  NSString *accountNumber;
  int64_t expirationMs;
} AccountLinkPayload__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "username",
        .dataTypeSpecific.className = NULL,
        .number = AccountLinkPayload_FieldNumber_Username,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AccountLinkPayload__storage_, username),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "accountName",
        .dataTypeSpecific.className = NULL,
        .number = AccountLinkPayload_FieldNumber_AccountName,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AccountLinkPayload__storage_, accountName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "accountNumber",
        .dataTypeSpecific.className = NULL,
        .number = AccountLinkPayload_FieldNumber_AccountNumber,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(AccountLinkPayload__storage_, accountNumber),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "expirationMs",
        .dataTypeSpecific.className = NULL,
        .number = AccountLinkPayload_FieldNumber_ExpirationMs,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(AccountLinkPayload__storage_, expirationMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AccountLinkPayload class]
                                     rootClass:[AccountRoot class]
                                          file:AccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AccountLinkPayload__storage_)
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

typedef struct Account__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
  NSString *name;
  NSString *bankId;
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


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
