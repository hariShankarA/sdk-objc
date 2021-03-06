#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "fank/Cma9.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class AccountBalancesRequest;
@class AccountBalancesResponse;
@class AccountRequest;
@class AccountRequestsRequest;
@class AccountRequestsResponse;
@class AccountResponse;
@class AccountTransactionsRequest;
@class AccountTransactionsResponse;
@class AccountsRequest;
@class AccountsResponse;
@class DeleteAccountRequestsRequest;
@class DeleteAccountRequestsResponse;
@class PartyRequest;
@class PartyResponse;
@class PaymentSubmissionsRequest;
@class PaymentSubmissionsResponse;
@class PaymentsRequest;
@class PaymentsResponse;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  #import "google/api/Annotations.pbobjc.h"
#endif

@class GRPCProtoCall;
@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;


NS_ASSUME_NONNULL_BEGIN

@protocol Cma9Service2 <NSObject>

#pragma mark CreateAccountRequest(AccountRequestsRequest) returns (AccountRequestsResponse)

/**
 * Used to request information about accounts and transactions.
 */
- (GRPCUnaryProtoCall *)createAccountRequestWithMessage:(AccountRequestsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark RemoveAccountRequest(DeleteAccountRequestsRequest) returns (DeleteAccountRequestsResponse)

/**
 * Used to delete a request for account/transaction information.
 */
- (GRPCUnaryProtoCall *)removeAccountRequestWithMessage:(DeleteAccountRequestsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccounts(AccountsRequest) returns (AccountsResponse)

/**
 * Used to retrieve a list of accounts the AISP is authorized to access
 */
- (GRPCUnaryProtoCall *)getAccountsWithMessage:(AccountsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccount(AccountRequest) returns (AccountResponse)

/**
 * Used to query information about a particular account.
 */
- (GRPCUnaryProtoCall *)getAccountWithMessage:(AccountRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccountBalances(AccountBalancesRequest) returns (AccountBalancesResponse)

/**
 * Used to query account balances.
 */
- (GRPCUnaryProtoCall *)getAccountBalancesWithMessage:(AccountBalancesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccountTransactions(AccountTransactionsRequest) returns (AccountTransactionsResponse)

/**
 * Used to query information about an account's transactions.
 */
- (GRPCUnaryProtoCall *)getAccountTransactionsWithMessage:(AccountTransactionsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreatePayment(PaymentsRequest) returns (PaymentsResponse)

/**
 * Used to create a payment object, later to be redeemed.
 */
- (GRPCUnaryProtoCall *)createPaymentWithMessage:(PaymentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreatePaymentSubmission(PaymentSubmissionsRequest) returns (PaymentSubmissionsResponse)

/**
 * Used to submit/redeem an existing payment object.
 */
- (GRPCUnaryProtoCall *)createPaymentSubmissionWithMessage:(PaymentSubmissionsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetParty(PartyRequest) returns (PartyResponse)

/**
 * Used to get account details
 */
- (GRPCUnaryProtoCall *)getPartyWithMessage:(PartyRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

@protocol Cma9Service <NSObject>

#pragma mark CreateAccountRequest(AccountRequestsRequest) returns (AccountRequestsResponse)

/**
 * Used to request information about accounts and transactions.
 */
- (void)createAccountRequestWithRequest:(AccountRequestsRequest *)request handler:(void(^)(AccountRequestsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Used to request information about accounts and transactions.
 */
- (GRPCProtoCall *)RPCToCreateAccountRequestWithRequest:(AccountRequestsRequest *)request handler:(void(^)(AccountRequestsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RemoveAccountRequest(DeleteAccountRequestsRequest) returns (DeleteAccountRequestsResponse)

/**
 * Used to delete a request for account/transaction information.
 */
- (void)removeAccountRequestWithRequest:(DeleteAccountRequestsRequest *)request handler:(void(^)(DeleteAccountRequestsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Used to delete a request for account/transaction information.
 */
- (GRPCProtoCall *)RPCToRemoveAccountRequestWithRequest:(DeleteAccountRequestsRequest *)request handler:(void(^)(DeleteAccountRequestsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccounts(AccountsRequest) returns (AccountsResponse)

/**
 * Used to retrieve a list of accounts the AISP is authorized to access
 */
- (void)getAccountsWithRequest:(AccountsRequest *)request handler:(void(^)(AccountsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Used to retrieve a list of accounts the AISP is authorized to access
 */
- (GRPCProtoCall *)RPCToGetAccountsWithRequest:(AccountsRequest *)request handler:(void(^)(AccountsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccount(AccountRequest) returns (AccountResponse)

/**
 * Used to query information about a particular account.
 */
- (void)getAccountWithRequest:(AccountRequest *)request handler:(void(^)(AccountResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Used to query information about a particular account.
 */
- (GRPCProtoCall *)RPCToGetAccountWithRequest:(AccountRequest *)request handler:(void(^)(AccountResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccountBalances(AccountBalancesRequest) returns (AccountBalancesResponse)

/**
 * Used to query account balances.
 */
- (void)getAccountBalancesWithRequest:(AccountBalancesRequest *)request handler:(void(^)(AccountBalancesResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Used to query account balances.
 */
- (GRPCProtoCall *)RPCToGetAccountBalancesWithRequest:(AccountBalancesRequest *)request handler:(void(^)(AccountBalancesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccountTransactions(AccountTransactionsRequest) returns (AccountTransactionsResponse)

/**
 * Used to query information about an account's transactions.
 */
- (void)getAccountTransactionsWithRequest:(AccountTransactionsRequest *)request handler:(void(^)(AccountTransactionsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Used to query information about an account's transactions.
 */
- (GRPCProtoCall *)RPCToGetAccountTransactionsWithRequest:(AccountTransactionsRequest *)request handler:(void(^)(AccountTransactionsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreatePayment(PaymentsRequest) returns (PaymentsResponse)

/**
 * Used to create a payment object, later to be redeemed.
 */
- (void)createPaymentWithRequest:(PaymentsRequest *)request handler:(void(^)(PaymentsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Used to create a payment object, later to be redeemed.
 */
- (GRPCProtoCall *)RPCToCreatePaymentWithRequest:(PaymentsRequest *)request handler:(void(^)(PaymentsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreatePaymentSubmission(PaymentSubmissionsRequest) returns (PaymentSubmissionsResponse)

/**
 * Used to submit/redeem an existing payment object.
 */
- (void)createPaymentSubmissionWithRequest:(PaymentSubmissionsRequest *)request handler:(void(^)(PaymentSubmissionsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Used to submit/redeem an existing payment object.
 */
- (GRPCProtoCall *)RPCToCreatePaymentSubmissionWithRequest:(PaymentSubmissionsRequest *)request handler:(void(^)(PaymentSubmissionsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetParty(PartyRequest) returns (PartyResponse)

/**
 * Used to get account details
 */
- (void)getPartyWithRequest:(PartyRequest *)request handler:(void(^)(PartyResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Used to get account details
 */
- (GRPCProtoCall *)RPCToGetPartyWithRequest:(PartyRequest *)request handler:(void(^)(PartyResponse *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Cma9Service : GRPCProtoService<Cma9Service, Cma9Service2>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

