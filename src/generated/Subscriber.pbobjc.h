// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: subscriber.proto

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

#pragma mark - SubscriberRoot

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
@interface SubscriberRoot : GPBRootObject
@end

#pragma mark - Subscriber

typedef GPB_ENUM(Subscriber_FieldNumber) {
  Subscriber_FieldNumber_Id_p = 1,
  Subscriber_FieldNumber_Handler = 2,
  Subscriber_FieldNumber_HandlerInstructions = 3,
};

/**
 * Subscriber object. Represent a subscription to notifications for a member.
 **/
@interface Subscriber : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/** Determines who is handling/sending the notification (e.g. token) */
@property(nonatomic, readwrite, copy, null_resettable) NSString *handler;

/** contains information on how to send the notifications */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, NSString*> *handlerInstructions;
/** The number of items in @c handlerInstructions without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger handlerInstructions_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
