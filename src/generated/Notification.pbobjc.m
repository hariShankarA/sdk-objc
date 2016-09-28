// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: notification.proto

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

 #import "Notification.pbobjc.h"
 #import "Payment.pbobjc.h"
 #import "Token.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - NotificationRoot

@implementation NotificationRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[PaymentRoot extensionRegistry]];
    [registry addExtensions:[TokenRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - NotificationRoot_FileDescriptor

static GPBFileDescriptor *NotificationRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.common.notification"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - PaymentProcessed

@implementation PaymentProcessed

@dynamic hasPayment, payment;

typedef struct PaymentProcessed__storage_ {
  uint32_t _has_storage_[1];
  Payment *payment;
} PaymentProcessed__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payment",
        .dataTypeSpecific.className = GPBStringifySymbol(Payment),
        .number = PaymentProcessed_FieldNumber_Payment,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PaymentProcessed__storage_, payment),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PaymentProcessed class]
                                     rootClass:[NotificationRoot class]
                                          file:NotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PaymentProcessed__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - LinkAccounts

@implementation LinkAccounts

@dynamic bankId;
@dynamic accountLinkPayload;

typedef struct LinkAccounts__storage_ {
  uint32_t _has_storage_[1];
  NSString *bankId;
  NSData *accountLinkPayload;
} LinkAccounts__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "bankId",
        .dataTypeSpecific.className = NULL,
        .number = LinkAccounts_FieldNumber_BankId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(LinkAccounts__storage_, bankId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "accountLinkPayload",
        .dataTypeSpecific.className = NULL,
        .number = LinkAccounts_FieldNumber_AccountLinkPayload,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(LinkAccounts__storage_, accountLinkPayload),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[LinkAccounts class]
                                     rootClass:[NotificationRoot class]
                                          file:NotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(LinkAccounts__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - StepUp

@implementation StepUp

@dynamic tokenOneOfCase;
@dynamic paymentToken;
@dynamic informationToken;

typedef struct StepUp__storage_ {
  uint32_t _has_storage_[2];
  PaymentToken *paymentToken;
  InformationToken *informationToken;
} StepUp__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "paymentToken",
        .dataTypeSpecific.className = GPBStringifySymbol(PaymentToken),
        .number = StepUp_FieldNumber_PaymentToken,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(StepUp__storage_, paymentToken),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "informationToken",
        .dataTypeSpecific.className = GPBStringifySymbol(InformationToken),
        .number = StepUp_FieldNumber_InformationToken,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(StepUp__storage_, informationToken),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[StepUp class]
                                     rootClass:[NotificationRoot class]
                                          file:NotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(StepUp__storage_)
                                         flags:0];
    static const char *oneofs[] = {
      "token",
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

void StepUp_ClearTokenOneOfCase(StepUp *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - AddKey

@implementation AddKey

@dynamic publicKey;
@dynamic tagsArray, tagsArray_Count;

typedef struct AddKey__storage_ {
  uint32_t _has_storage_[1];
  NSString *publicKey;
  NSMutableArray *tagsArray;
} AddKey__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "publicKey",
        .dataTypeSpecific.className = NULL,
        .number = AddKey_FieldNumber_PublicKey,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AddKey__storage_, publicKey),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "tagsArray",
        .dataTypeSpecific.className = NULL,
        .number = AddKey_FieldNumber_TagsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(AddKey__storage_, tagsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AddKey class]
                                     rootClass:[NotificationRoot class]
                                          file:NotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AddKey__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Custom

@implementation Custom

@dynamic payload;

typedef struct Custom__storage_ {
  uint32_t _has_storage_[1];
  NSString *payload;
} Custom__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payload",
        .dataTypeSpecific.className = NULL,
        .number = Custom_FieldNumber_Payload,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Custom__storage_, payload),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Custom class]
                                     rootClass:[NotificationRoot class]
                                          file:NotificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Custom__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)