// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: extensions/service.proto

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

 #import "extensions/Service.pbobjc.h"
 #import "google/protobuf/Descriptor.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - ServiceRoot

@implementation ServiceRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    static GPBExtensionDescription descriptions[] = {
      {
        .defaultValue.valueMessage = nil,
        .singletonName = GPBStringifySymbol(ServiceRoot_rateLimit),
        .extendedClass = GPBStringifySymbol(GPBMethodOptions),
        .messageOrGroupClassName = GPBStringifySymbol(RateLimitSelector),
        .enumDescriptorFunc = NULL,
        .fieldNumber = 5000,
        .dataType = GPBDataTypeMessage,
        .options = GPBExtensionRepeated,
      },
    };
    for (size_t i = 0; i < sizeof(descriptions) / sizeof(descriptions[0]); ++i) {
      GPBExtensionDescriptor *extension =
          [[GPBExtensionDescriptor alloc] initWithExtensionDescription:&descriptions[i]];
      [registry addExtension:extension];
      [self globallyRegisterExtension:extension];
      [extension release];
    }
    // None of the imports (direct or indirect) defined extensions, so no need to add
    // them to this registry.
  }
  return registry;
}

@end

#pragma mark - ServiceRoot_FileDescriptor

static GPBFileDescriptor *ServiceRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.extensions.service"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - RateLimitSelector

@implementation RateLimitSelector

@dynamic selectorArray, selectorArray_Count;

typedef struct RateLimitSelector__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *selectorArray;
} RateLimitSelector__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "selectorArray",
        .dataTypeSpecific.className = GPBStringifySymbol(RateLimitSelector_Selector),
        .number = RateLimitSelector_FieldNumber_SelectorArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(RateLimitSelector__storage_, selectorArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RateLimitSelector class]
                                     rootClass:[ServiceRoot class]
                                          file:ServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RateLimitSelector__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - RateLimitSelector_Selector

@implementation RateLimitSelector_Selector

@dynamic key;
@dynamic path;

typedef struct RateLimitSelector_Selector__storage_ {
  uint32_t _has_storage_[1];
  NSString *key;
  NSString *path;
} RateLimitSelector_Selector__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "key",
        .dataTypeSpecific.className = NULL,
        .number = RateLimitSelector_Selector_FieldNumber_Key,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RateLimitSelector_Selector__storage_, key),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "path",
        .dataTypeSpecific.className = NULL,
        .number = RateLimitSelector_Selector_FieldNumber_Path,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RateLimitSelector_Selector__storage_, path),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RateLimitSelector_Selector class]
                                     rootClass:[ServiceRoot class]
                                          file:ServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RateLimitSelector_Selector__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(RateLimitSelector)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
