#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "fank/Fank.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class BankAuthorization;
@class FankAddAccountRequest;
@class FankAddAccountResponse;
@class FankAddClientRequest;
@class FankAddClientResponse;
@class FankAuthorizeLinkAccountsRequest;
@class FankGetAccountRequest;
@class FankGetAccountResponse;
@class FankGetAccountsRequest;
@class FankGetAccountsResponse;
@class FankGetClientRequest;
@class FankGetClientResponse;
@class FankGetNotificationRequest;
@class FankGetNotificationResponse;
@class FankGetNotificationsRequest;
@class FankGetNotificationsResponse;
@class FankGetOauthAccessTokenRequest;
@class FankGetOauthAccessTokenResponse;
@class FankVerifyAliasRequest;
@class FankVerifyAliasResponse;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  #import "google/api/Annotations.pbobjc.h"
  #import "Alias.pbobjc.h"
  #import "Member.pbobjc.h"
  #import "Money.pbobjc.h"
  #import "Banklink.pbobjc.h"
  #import "Notification.pbobjc.h"
#endif

@class GRPCProtoCall;
@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;


NS_ASSUME_NONNULL_BEGIN

@protocol FankFankService2 <NSObject>

#pragma mark AddClient(AddClientRequest) returns (AddClientResponse)

- (GRPCUnaryProtoCall *)addClientWithMessage:(FankAddClientRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetClient(GetClientRequest) returns (GetClientResponse)

- (GRPCUnaryProtoCall *)getClientWithMessage:(FankGetClientRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark AddAccount(AddAccountRequest) returns (AddAccountResponse)

- (GRPCUnaryProtoCall *)addAccountWithMessage:(FankAddAccountRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccounts(GetAccountsRequest) returns (GetAccountsResponse)

- (GRPCUnaryProtoCall *)getAccountsWithMessage:(FankGetAccountsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccount(GetAccountRequest) returns (GetAccountResponse)

- (GRPCUnaryProtoCall *)getAccountWithMessage:(FankGetAccountRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark AuthorizeLinkAccounts(AuthorizeLinkAccountsRequest) returns (BankAuthorization)

- (GRPCUnaryProtoCall *)authorizeLinkAccountsWithMessage:(FankAuthorizeLinkAccountsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark AuthorizeLinkAccountsGet(AuthorizeLinkAccountsRequest) returns (BankAuthorization)

- (GRPCUnaryProtoCall *)authorizeLinkAccountsGetWithMessage:(FankAuthorizeLinkAccountsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetOauthAccessToken(GetOauthAccessTokenRequest) returns (GetOauthAccessTokenResponse)

/**
 * 
 * Used by bank-demo to obtain access token.
 * 
 */
- (GRPCUnaryProtoCall *)getOauthAccessTokenWithMessage:(FankGetOauthAccessTokenRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetNotification(GetNotificationRequest) returns (GetNotificationResponse)

/**
 * 
 * Used by clients to make sure that notifications were routed and correctly delivered to
 * the fank. This is mainly for testing the flow where a notification is sent through a bank
 * instead of straight to devices.
 * 
 */
- (GRPCUnaryProtoCall *)getNotificationWithMessage:(FankGetNotificationRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetNotifications(GetNotificationsRequest) returns (GetNotificationsResponse)

- (GRPCUnaryProtoCall *)getNotificationsWithMessage:(FankGetNotificationsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark VerifyAlias(VerifyAliasRequest) returns (VerifyAliasResponse)

/**
 * 
 * Used by sdk-java-tests to create members in the fank realms.
 * 
 * 
 */
- (GRPCUnaryProtoCall *)verifyAliasWithMessage:(FankVerifyAliasRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

@protocol FankFankService <NSObject>

#pragma mark AddClient(AddClientRequest) returns (AddClientResponse)

- (void)addClientWithRequest:(FankAddClientRequest *)request handler:(void(^)(FankAddClientResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddClientWithRequest:(FankAddClientRequest *)request handler:(void(^)(FankAddClientResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetClient(GetClientRequest) returns (GetClientResponse)

- (void)getClientWithRequest:(FankGetClientRequest *)request handler:(void(^)(FankGetClientResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetClientWithRequest:(FankGetClientRequest *)request handler:(void(^)(FankGetClientResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddAccount(AddAccountRequest) returns (AddAccountResponse)

- (void)addAccountWithRequest:(FankAddAccountRequest *)request handler:(void(^)(FankAddAccountResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddAccountWithRequest:(FankAddAccountRequest *)request handler:(void(^)(FankAddAccountResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccounts(GetAccountsRequest) returns (GetAccountsResponse)

- (void)getAccountsWithRequest:(FankGetAccountsRequest *)request handler:(void(^)(FankGetAccountsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountsWithRequest:(FankGetAccountsRequest *)request handler:(void(^)(FankGetAccountsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccount(GetAccountRequest) returns (GetAccountResponse)

- (void)getAccountWithRequest:(FankGetAccountRequest *)request handler:(void(^)(FankGetAccountResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountWithRequest:(FankGetAccountRequest *)request handler:(void(^)(FankGetAccountResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AuthorizeLinkAccounts(AuthorizeLinkAccountsRequest) returns (BankAuthorization)

- (void)authorizeLinkAccountsWithRequest:(FankAuthorizeLinkAccountsRequest *)request handler:(void(^)(BankAuthorization *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAuthorizeLinkAccountsWithRequest:(FankAuthorizeLinkAccountsRequest *)request handler:(void(^)(BankAuthorization *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AuthorizeLinkAccountsGet(AuthorizeLinkAccountsRequest) returns (BankAuthorization)

- (void)authorizeLinkAccountsGetWithRequest:(FankAuthorizeLinkAccountsRequest *)request handler:(void(^)(BankAuthorization *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAuthorizeLinkAccountsGetWithRequest:(FankAuthorizeLinkAccountsRequest *)request handler:(void(^)(BankAuthorization *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetOauthAccessToken(GetOauthAccessTokenRequest) returns (GetOauthAccessTokenResponse)

/**
 * 
 * Used by bank-demo to obtain access token.
 * 
 */
- (void)getOauthAccessTokenWithRequest:(FankGetOauthAccessTokenRequest *)request handler:(void(^)(FankGetOauthAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 
 * Used by bank-demo to obtain access token.
 * 
 */
- (GRPCProtoCall *)RPCToGetOauthAccessTokenWithRequest:(FankGetOauthAccessTokenRequest *)request handler:(void(^)(FankGetOauthAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetNotification(GetNotificationRequest) returns (GetNotificationResponse)

/**
 * 
 * Used by clients to make sure that notifications were routed and correctly delivered to
 * the fank. This is mainly for testing the flow where a notification is sent through a bank
 * instead of straight to devices.
 * 
 */
- (void)getNotificationWithRequest:(FankGetNotificationRequest *)request handler:(void(^)(FankGetNotificationResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 
 * Used by clients to make sure that notifications were routed and correctly delivered to
 * the fank. This is mainly for testing the flow where a notification is sent through a bank
 * instead of straight to devices.
 * 
 */
- (GRPCProtoCall *)RPCToGetNotificationWithRequest:(FankGetNotificationRequest *)request handler:(void(^)(FankGetNotificationResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetNotifications(GetNotificationsRequest) returns (GetNotificationsResponse)

- (void)getNotificationsWithRequest:(FankGetNotificationsRequest *)request handler:(void(^)(FankGetNotificationsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetNotificationsWithRequest:(FankGetNotificationsRequest *)request handler:(void(^)(FankGetNotificationsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark VerifyAlias(VerifyAliasRequest) returns (VerifyAliasResponse)

/**
 * 
 * Used by sdk-java-tests to create members in the fank realms.
 * 
 * 
 */
- (void)verifyAliasWithRequest:(FankVerifyAliasRequest *)request handler:(void(^)(FankVerifyAliasResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 
 * Used by sdk-java-tests to create members in the fank realms.
 * 
 * 
 */
- (GRPCProtoCall *)RPCToVerifyAliasWithRequest:(FankVerifyAliasRequest *)request handler:(void(^)(FankVerifyAliasResponse *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface FankFankService : GRPCProtoService<FankFankService, FankFankService2>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

