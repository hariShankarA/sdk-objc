// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: subscriber.proto

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

 #import "Subscriber.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - SubscriberRoot

@implementation SubscriberRoot

@end

#pragma mark - SubscriberRoot_FileDescriptor

static GPBFileDescriptor *SubscriberRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.common.subscriber"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum Platform

GPBEnumDescriptor *Platform_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Ios\000Android\000Test\000";
    static const int32_t values[] = {
        Platform_Ios,
        Platform_Android,
        Platform_Test,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Platform)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Platform_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Platform_IsValidValue(int32_t value__) {
  switch (value__) {
    case Platform_Ios:
    case Platform_Android:
    case Platform_Test:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Subscriber

@implementation Subscriber

@dynamic id_p;
@dynamic target;
@dynamic platform;

typedef struct Subscriber__storage_ {
  uint32_t _has_storage_[1];
  Platform platform;
  NSString *id_p;
  NSString *target;
} Subscriber__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = Subscriber_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Subscriber__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "target",
        .dataTypeSpecific.className = NULL,
        .number = Subscriber_FieldNumber_Target,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Subscriber__storage_, target),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "platform",
        .dataTypeSpecific.enumDescFunc = Platform_EnumDescriptor,
        .number = Subscriber_FieldNumber_Platform,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Subscriber__storage_, platform),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Subscriber class]
                                     rootClass:[SubscriberRoot class]
                                          file:SubscriberRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Subscriber__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Subscriber_Platform_RawValue(Subscriber *message) {
  GPBDescriptor *descriptor = [Subscriber descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Subscriber_FieldNumber_Platform];
  return GPBGetMessageInt32Field(message, field);
}

void SetSubscriber_Platform_RawValue(Subscriber *message, int32_t value) {
  GPBDescriptor *descriptor = [Subscriber descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Subscriber_FieldNumber_Platform];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)