// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gateway/auth.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - AuthRoot

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
@interface AuthRoot : GPBRootObject
@end

#pragma mark - HttpAuthPayload

typedef GPB_ENUM(HttpAuthPayload_FieldNumber) {
  HttpAuthPayload_FieldNumber_Method = 1,
  HttpAuthPayload_FieldNumber_UriHost = 2,
  HttpAuthPayload_FieldNumber_UriPath = 3,
  HttpAuthPayload_FieldNumber_QueryString = 4,
  HttpAuthPayload_FieldNumber_RequestBody = 5,
  HttpAuthPayload_FieldNumber_CreatedAtMs = 6,
};

/**
 * For HTTP communication, the payload consists of some of the HTTP request fields.
 * We convert the proto into canonical JSON and sign it.
 * https://github.com/tokenio/sdk-js/blob/master/src/http/AuthHeader.js
 **/
@interface HttpAuthPayload : GPBMessage

/** HTTP method, e.g., "POST" */
@property(nonatomic, readwrite, copy, null_resettable) NSString *method;

/** host, e.g., "api.sandbox.token.io" */
@property(nonatomic, readwrite, copy, null_resettable) NSString *uriHost;

/** path part of URL, e.g., "/aliases" */
@property(nonatomic, readwrite, copy, null_resettable) NSString *uriPath;

/** query part of URL, e.g., "tokenId=tt:AMg...bXg5ny:5zKcENpV&offset=null&limit=100" */
@property(nonatomic, readwrite, copy, null_resettable) NSString *queryString;

/** request body, e.g., "{\\"memberId\\":\\"m:Y9GkD...LdEn:5zKtXEAq\\"}" */
@property(nonatomic, readwrite, copy, null_resettable) NSString *requestBody;

/** creation time, e.g., "1515710877090" */
@property(nonatomic, readwrite) int64_t createdAtMs;

@end

#pragma mark - GrpcAuthPayload

typedef GPB_ENUM(GrpcAuthPayload_FieldNumber) {
  GrpcAuthPayload_FieldNumber_Request = 1,
  GrpcAuthPayload_FieldNumber_CreatedAtMs = 6,
};

/**
 * For gRPC communication, the payload is a serialized protbuf and creation time.
 * https://github.com/tokenio/sdk-java/blob/master/lib/src/main/java/io/token/rpc/ClientAuthenticator.java
 **/
@interface GrpcAuthPayload : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *request;

@property(nonatomic, readwrite) int64_t createdAtMs;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
