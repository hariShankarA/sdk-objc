// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/http.proto

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

@class CustomHttpPattern;
@class HttpRule;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - HTTPRoot

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
@interface HTTPRoot : GPBRootObject
@end

#pragma mark - HttpRule

typedef GPB_ENUM(HttpRule_FieldNumber) {
  HttpRule_FieldNumber_Get = 2,
  HttpRule_FieldNumber_Put = 3,
  HttpRule_FieldNumber_Post = 4,
  HttpRule_FieldNumber_Delete_p = 5,
  HttpRule_FieldNumber_Patch = 6,
  HttpRule_FieldNumber_Body = 7,
  HttpRule_FieldNumber_Custom = 8,
  HttpRule_FieldNumber_AdditionalBindingsArray = 11,
};

typedef GPB_ENUM(HttpRule_Pattern_OneOfCase) {
  HttpRule_Pattern_OneOfCase_GPBUnsetOneOfCase = 0,
  HttpRule_Pattern_OneOfCase_Get = 2,
  HttpRule_Pattern_OneOfCase_Put = 3,
  HttpRule_Pattern_OneOfCase_Post = 4,
  HttpRule_Pattern_OneOfCase_Delete_p = 5,
  HttpRule_Pattern_OneOfCase_Patch = 6,
  HttpRule_Pattern_OneOfCase_Custom = 8,
};

/**
 * `HttpRule` defines the mapping of an RPC method to one or more HTTP REST API
 * methods. The mapping determines what portions of the request message are
 * populated from the path, query parameters, or body of the HTTP request.  The
 * mapping is typically specified as an `google.api.http` annotation, see
 * "google/api/annotations.proto" for details.
 *
 * The mapping consists of a mandatory field specifying a path template and an
 * optional `body` field specifying what data is represented in the HTTP request
 * body. The field name for the path indicates the HTTP method. Example:
 *
 * ```
 * package google.storage.v2;
 *
 * import "google/api/annotations.proto";
 *
 * service Storage {
 *   rpc CreateObject(CreateObjectRequest) returns (Object) {
 *     option (google.api.http) {
 *       post: "/v2/{bucket_name=buckets/\*}/objects"
 *       body: "object"
 *     };
 *   };
 * }
 * ```
 *
 * Here `bucket_name` and `object` bind to fields of the request message
 * `CreateObjectRequest`.
 *
 * The rules for mapping HTTP path, query parameters, and body fields
 * to the request message are as follows:
 *
 * 1. The `body` field specifies either `*` or a field path, or is
 *    omitted. If omitted, it assumes there is no HTTP body.
 * 2. Leaf fields (recursive expansion of nested messages in the
 *    request) can be classified into three types:
 *     (a) Matched in the URL template.
 *     (b) Covered by body (if body is `*`, everything except (a) fields;
 *         else everything under the body field)
 *     (c) All other fields.
 * 3. URL query parameters found in the HTTP request are mapped to (c) fields.
 * 4. Any body sent with an HTTP request can contain only (b) fields.
 *
 * The syntax of the path template is as follows:
 *
 *     Template = "/" Segments [ Verb ] ;
 *     Segments = Segment { "/" Segment } ;
 *     Segment  = "*" | "**" | LITERAL | Variable ;
 *     Variable = "{" FieldPath [ "=" Segments ] "}" ;
 *     FieldPath = IDENT { "." IDENT } ;
 *     Verb     = ":" LITERAL ;
 *
 * `*` matches a single path component, `**` zero or more path components, and
 * `LITERAL` a constant.  A `Variable` can match an entire path as specified
 * again by a template; this nested template must not contain further variables.
 * If no template is given with a variable, it matches a single path component.
 * The notation `{var}` is henceforth equivalent to `{var=*}`.
 *
 * Use CustomHttpPattern to specify any HTTP method that is not included in the
 * pattern field, such as HEAD, or "*" to leave the HTTP method unspecified for
 * a given URL path rule. The wild-card rule is useful for services that provide
 * content to Web (HTML) clients.
 **/
@interface HttpRule : GPBMessage

/**
 * Determines the URL pattern is matched by this rules. This pattern can be
 * used with any of the {get|put|post|delete|patch} methods. A custom method
 * can be defined using the 'custom' field.
 **/
@property(nonatomic, readonly) HttpRule_Pattern_OneOfCase patternOneOfCase;

/** Used for listing and getting information about resources. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *get;

/** Used for updating a resource. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *put;

/** Used for creating a resource. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *post;

/** Used for deleting a resource. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *delete_p;

/** Used for updating a resource. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *patch;

/** Custom pattern is used for defining custom verbs. */
@property(nonatomic, readwrite, strong, null_resettable) CustomHttpPattern *custom;

/**
 * The name of the request field whose value is mapped to the HTTP body, or
 * `*` for mapping all fields not captured by the path pattern to the HTTP
 * body.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *body;

/**
 * Additional HTTP bindings for the selector. Nested bindings must not
 * specify a selector and must not contain additional bindings.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<HttpRule*> *additionalBindingsArray;
/** The number of items in @c additionalBindingsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger additionalBindingsArray_Count;

@end

/**
 * Clears whatever value was set for the oneof 'pattern'.
 **/
void HttpRule_ClearPatternOneOfCase(HttpRule *message);

#pragma mark - CustomHttpPattern

typedef GPB_ENUM(CustomHttpPattern_FieldNumber) {
  CustomHttpPattern_FieldNumber_Kind = 1,
  CustomHttpPattern_FieldNumber_Path = 2,
};

/**
 * A custom pattern is used for defining custom HTTP verb.
 **/
@interface CustomHttpPattern : GPBMessage

/** The name of this custom HTTP verb. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *kind;

/** The path matched by this custom verb. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *path;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
