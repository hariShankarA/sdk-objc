// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: blob.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class Blob_Payload;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum Blob_AccessMode

typedef GPB_ENUM(Blob_AccessMode) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  Blob_AccessMode_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** Owner or token-participants can read. */
  Blob_AccessMode_Default = 0,

  /** Anyone can read. Good for, e.g., profile pictures */
  Blob_AccessMode_Public = 1,
};

GPBEnumDescriptor *Blob_AccessMode_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL Blob_AccessMode_IsValidValue(int32_t value);

#pragma mark - BlobRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface BlobRoot : GPBRootObject
@end

#pragma mark - Blob

typedef GPB_ENUM(Blob_FieldNumber) {
  Blob_FieldNumber_Id_p = 1,
  Blob_FieldNumber_Payload = 2,
};

/**
 * Representation of a blob of data.
 **/
@interface Blob : GPBMessage

/** Hash of the payload, route, shard */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, strong, null_resettable) Blob_Payload *payload;
/** Test to see if @c payload has been set. */
@property(nonatomic, readwrite) BOOL hasPayload;

@end

#pragma mark - Blob_Payload

typedef GPB_ENUM(Blob_Payload_FieldNumber) {
  Blob_Payload_FieldNumber_OwnerId = 1,
  Blob_Payload_FieldNumber_Type = 2,
  Blob_Payload_FieldNumber_Name = 3,
  Blob_Payload_FieldNumber_Data_p = 4,
  Blob_Payload_FieldNumber_AccessMode = 5,
};

@interface Blob_Payload : GPBMessage

/** Who owns this blob (member id) */
@property(nonatomic, readwrite, copy, null_resettable) NSString *ownerId;

/** Mime type */
@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

/** Name of file */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/** Data */
@property(nonatomic, readwrite, copy, null_resettable) NSData *data_p;

/** Is it public? */
@property(nonatomic, readwrite) Blob_AccessMode accessMode;

@end

/**
 * Fetches the raw value of a @c Blob_Payload's @c accessMode property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t Blob_Payload_AccessMode_RawValue(Blob_Payload *message);
/**
 * Sets the raw value of an @c Blob_Payload's @c accessMode property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetBlob_Payload_AccessMode_RawValue(Blob_Payload *message, int32_t value);

#pragma mark - Attachment

typedef GPB_ENUM(Attachment_FieldNumber) {
  Attachment_FieldNumber_BlobId = 1,
  Attachment_FieldNumber_Type = 2,
  Attachment_FieldNumber_Name = 3,
};

/**
 * Attachment of a blob to a token.
 **/
@interface Attachment : GPBMessage

/** Blob ID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *blobId;

/** Mime type */
@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

/** Name of file */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
