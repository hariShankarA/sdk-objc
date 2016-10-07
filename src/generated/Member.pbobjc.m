// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: member.proto

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

 #import "Member.pbobjc.h"
 #import "Security.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - MemberRoot

@implementation MemberRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[SecurityRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - MemberRoot_FileDescriptor

static GPBFileDescriptor *MemberRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.common.member"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - MemberAddKeyOperation

@implementation MemberAddKeyOperation

@dynamic publicKey;
@dynamic level;
@dynamic tagsArray, tagsArray_Count;

typedef struct MemberAddKeyOperation__storage_ {
  uint32_t _has_storage_[1];
  Key_Level level;
  NSString *publicKey;
  NSMutableArray *tagsArray;
} MemberAddKeyOperation__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "publicKey",
        .dataTypeSpecific.className = NULL,
        .number = MemberAddKeyOperation_FieldNumber_PublicKey,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(MemberAddKeyOperation__storage_, publicKey),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "level",
        .dataTypeSpecific.enumDescFunc = Key_Level_EnumDescriptor,
        .number = MemberAddKeyOperation_FieldNumber_Level,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(MemberAddKeyOperation__storage_, level),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "tagsArray",
        .dataTypeSpecific.className = NULL,
        .number = MemberAddKeyOperation_FieldNumber_TagsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(MemberAddKeyOperation__storage_, tagsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[MemberAddKeyOperation class]
                                     rootClass:[MemberRoot class]
                                          file:MemberRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(MemberAddKeyOperation__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t MemberAddKeyOperation_Level_RawValue(MemberAddKeyOperation *message) {
  GPBDescriptor *descriptor = [MemberAddKeyOperation descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:MemberAddKeyOperation_FieldNumber_Level];
  return GPBGetMessageInt32Field(message, field);
}

void SetMemberAddKeyOperation_Level_RawValue(MemberAddKeyOperation *message, int32_t value) {
  GPBDescriptor *descriptor = [MemberAddKeyOperation descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:MemberAddKeyOperation_FieldNumber_Level];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - MemberRemoveKeyOperation

@implementation MemberRemoveKeyOperation

@dynamic keyId;

typedef struct MemberRemoveKeyOperation__storage_ {
  uint32_t _has_storage_[1];
  NSString *keyId;
} MemberRemoveKeyOperation__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "keyId",
        .dataTypeSpecific.className = NULL,
        .number = MemberRemoveKeyOperation_FieldNumber_KeyId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(MemberRemoveKeyOperation__storage_, keyId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[MemberRemoveKeyOperation class]
                                     rootClass:[MemberRoot class]
                                          file:MemberRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(MemberRemoveKeyOperation__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - MemberAliasOperation

@implementation MemberAliasOperation

@dynamic alias;

typedef struct MemberAliasOperation__storage_ {
  uint32_t _has_storage_[1];
  NSString *alias;
} MemberAliasOperation__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "alias",
        .dataTypeSpecific.className = NULL,
        .number = MemberAliasOperation_FieldNumber_Alias,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(MemberAliasOperation__storage_, alias),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[MemberAliasOperation class]
                                     rootClass:[MemberRoot class]
                                          file:MemberRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(MemberAliasOperation__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - MemberUpdate

@implementation MemberUpdate

@dynamic operationOneOfCase;
@dynamic prevHash;
@dynamic memberId;
@dynamic addKey;
@dynamic removeKey;
@dynamic addAlias;
@dynamic removeAlias;

typedef struct MemberUpdate__storage_ {
  uint32_t _has_storage_[2];
  NSString *prevHash;
  NSString *memberId;
  MemberAddKeyOperation *addKey;
  MemberRemoveKeyOperation *removeKey;
  MemberAliasOperation *addAlias;
  MemberAliasOperation *removeAlias;
} MemberUpdate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "prevHash",
        .dataTypeSpecific.className = NULL,
        .number = MemberUpdate_FieldNumber_PrevHash,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(MemberUpdate__storage_, prevHash),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "memberId",
        .dataTypeSpecific.className = NULL,
        .number = MemberUpdate_FieldNumber_MemberId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(MemberUpdate__storage_, memberId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "addKey",
        .dataTypeSpecific.className = GPBStringifySymbol(MemberAddKeyOperation),
        .number = MemberUpdate_FieldNumber_AddKey,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(MemberUpdate__storage_, addKey),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "removeKey",
        .dataTypeSpecific.className = GPBStringifySymbol(MemberRemoveKeyOperation),
        .number = MemberUpdate_FieldNumber_RemoveKey,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(MemberUpdate__storage_, removeKey),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "addAlias",
        .dataTypeSpecific.className = GPBStringifySymbol(MemberAliasOperation),
        .number = MemberUpdate_FieldNumber_AddAlias,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(MemberUpdate__storage_, addAlias),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "removeAlias",
        .dataTypeSpecific.className = GPBStringifySymbol(MemberAliasOperation),
        .number = MemberUpdate_FieldNumber_RemoveAlias,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(MemberUpdate__storage_, removeAlias),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[MemberUpdate class]
                                     rootClass:[MemberRoot class]
                                          file:MemberRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(MemberUpdate__storage_)
                                         flags:0];
    static const char *oneofs[] = {
      "operation",
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

void MemberUpdate_ClearOperationOneOfCase(MemberUpdate *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - Member

@implementation Member

@dynamic id_p;
@dynamic lastHash;
@dynamic aliasesArray, aliasesArray_Count;
@dynamic keysArray, keysArray_Count;

typedef struct Member__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
  NSString *lastHash;
  NSMutableArray *aliasesArray;
  NSMutableArray *keysArray;
} Member__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = Member_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Member__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "lastHash",
        .dataTypeSpecific.className = NULL,
        .number = Member_FieldNumber_LastHash,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Member__storage_, lastHash),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "aliasesArray",
        .dataTypeSpecific.className = NULL,
        .number = Member_FieldNumber_AliasesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Member__storage_, aliasesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "keysArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Key),
        .number = Member_FieldNumber_KeysArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Member__storage_, keysArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Member class]
                                     rootClass:[MemberRoot class]
                                          file:MemberRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Member__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Address

@implementation Address

@dynamic id_p;
@dynamic name;
@dynamic data_p;
@dynamic hasDataSignature, dataSignature;

typedef struct Address__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
  NSString *name;
  NSString *data_p;
  Signature *dataSignature;
} Address__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Address__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Address__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "data_p",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Data_p,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Address__storage_, data_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "dataSignature",
        .dataTypeSpecific.className = GPBStringifySymbol(Signature),
        .number = Address_FieldNumber_DataSignature,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Address__storage_, dataSignature),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Address class]
                                     rootClass:[MemberRoot class]
                                          file:MemberRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Address__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
