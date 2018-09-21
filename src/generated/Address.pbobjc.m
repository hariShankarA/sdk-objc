// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: address.proto

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

#import "Address.pbobjc.h"
#import "extensions/Message.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - AddressRoot

@implementation AddressRoot

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

#pragma mark - AddressRoot_FileDescriptor

static GPBFileDescriptor *AddressRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"io.token.proto.common.address"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Address

@implementation Address

@dynamic houseNumber;
@dynamic houseName;
@dynamic flats;
@dynamic conscriptionNumber;
@dynamic street;
@dynamic place;
@dynamic postCode;
@dynamic city;
@dynamic country;
@dynamic full;
@dynamic hamlet;
@dynamic suburb;
@dynamic subdistrict;
@dynamic district;
@dynamic province;
@dynamic state;

typedef struct Address__storage_ {
  uint32_t _has_storage_[1];
  NSString *houseNumber;
  NSString *houseName;
  NSString *flats;
  NSString *conscriptionNumber;
  NSString *street;
  NSString *place;
  NSString *postCode;
  NSString *city;
  NSString *country;
  NSString *full;
  NSString *hamlet;
  NSString *suburb;
  NSString *subdistrict;
  NSString *district;
  NSString *province;
  NSString *state;
} Address__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "houseNumber",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_HouseNumber,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Address__storage_, houseNumber),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "houseName",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_HouseName,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Address__storage_, houseName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "flats",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Flats,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Address__storage_, flats),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "conscriptionNumber",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_ConscriptionNumber,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Address__storage_, conscriptionNumber),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "street",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Street,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Address__storage_, street),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "place",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Place,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(Address__storage_, place),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "postCode",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_PostCode,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(Address__storage_, postCode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "city",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_City,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(Address__storage_, city),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "country",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Country,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(Address__storage_, country),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "full",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Full,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(Address__storage_, full),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "hamlet",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Hamlet,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(Address__storage_, hamlet),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "suburb",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Suburb,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(Address__storage_, suburb),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "subdistrict",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Subdistrict,
        .hasIndex = 12,
        .offset = (uint32_t)offsetof(Address__storage_, subdistrict),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "district",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_District,
        .hasIndex = 13,
        .offset = (uint32_t)offsetof(Address__storage_, district),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "province",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_Province,
        .hasIndex = 14,
        .offset = (uint32_t)offsetof(Address__storage_, province),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "state",
        .dataTypeSpecific.className = NULL,
        .number = Address_FieldNumber_State,
        .hasIndex = 15,
        .offset = (uint32_t)offsetof(Address__storage_, state),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Address class]
                                     rootClass:[AddressRoot class]
                                          file:AddressRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Address__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
