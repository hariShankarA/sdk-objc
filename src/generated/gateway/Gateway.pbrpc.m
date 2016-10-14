#import "gateway/Gateway.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation GatewayService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"io.token.proto.gateway" serviceName:@"GatewayService"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark CreateMember(CreateMemberRequest) returns (CreateMemberResponse)

/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Member registration, key and alias mamangement.
 * 
 * 
 */
- (void)createMemberWithRequest:(CreateMemberRequest *)request handler:(void(^)(CreateMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Member registration, key and alias mamangement.
 * 
 * 
 */
- (GRPCProtoCall *)RPCToCreateMemberWithRequest:(CreateMemberRequest *)request handler:(void(^)(CreateMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[CreateMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpdateMember(UpdateMemberRequest) returns (UpdateMemberResponse)

- (void)updateMemberWithRequest:(UpdateMemberRequest *)request handler:(void(^)(UpdateMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateMemberWithRequest:(UpdateMemberRequest *)request handler:(void(^)(UpdateMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UpdateMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetMember(GetMemberRequest) returns (GetMemberResponse)

- (void)getMemberWithRequest:(GetMemberRequest *)request handler:(void(^)(GetMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMemberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetMemberWithRequest:(GetMemberRequest *)request handler:(void(^)(GetMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AliasExists(AliasExistsRequest) returns (AliasExistsResponse)

- (void)aliasExistsWithRequest:(AliasExistsRequest *)request handler:(void(^)(AliasExistsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAliasExistsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAliasExistsWithRequest:(AliasExistsRequest *)request handler:(void(^)(AliasExistsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AliasExists"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AliasExistsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark AddAddress(AddAddressRequest) returns (AddAddressResponse)

/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Member addresses and preferences
 * 
 * 
 */
- (void)addAddressWithRequest:(AddAddressRequest *)request handler:(void(^)(AddAddressResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddAddressWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Member addresses and preferences
 * 
 * 
 */
- (GRPCProtoCall *)RPCToAddAddressWithRequest:(AddAddressRequest *)request handler:(void(^)(AddAddressResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddAddress"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AddAddressResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetAddress(GetAddressRequest) returns (GetAddressResponse)

- (void)getAddressWithRequest:(GetAddressRequest *)request handler:(void(^)(GetAddressResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAddressWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAddressWithRequest:(GetAddressRequest *)request handler:(void(^)(GetAddressResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAddress"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetAddressResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetAddresses(GetAddressesRequest) returns (GetAddressesResponse)

- (void)getAddressesWithRequest:(GetAddressesRequest *)request handler:(void(^)(GetAddressesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAddressesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAddressesWithRequest:(GetAddressesRequest *)request handler:(void(^)(GetAddressesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAddresses"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetAddressesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark DeleteAddress(DeleteAddressRequest) returns (DeleteAddressResponse)

- (void)deleteAddressWithRequest:(DeleteAddressRequest *)request handler:(void(^)(DeleteAddressResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteAddressWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteAddressWithRequest:(DeleteAddressRequest *)request handler:(void(^)(DeleteAddressResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteAddress"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DeleteAddressResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SubscribeToNotifications(SubscribeToNotificationsRequest) returns (SubscribeToNotificationsResponse)

/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Devices for notification service
 * 
 * 
 */
- (void)subscribeToNotificationsWithRequest:(SubscribeToNotificationsRequest *)request handler:(void(^)(SubscribeToNotificationsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSubscribeToNotificationsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Devices for notification service
 * 
 * 
 */
- (GRPCProtoCall *)RPCToSubscribeToNotificationsWithRequest:(SubscribeToNotificationsRequest *)request handler:(void(^)(SubscribeToNotificationsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SubscribeToNotifications"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SubscribeToNotificationsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetSubscribers(GetSubscribersRequest) returns (GetSubscribersResponse)

- (void)getSubscribersWithRequest:(GetSubscribersRequest *)request handler:(void(^)(GetSubscribersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetSubscribersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetSubscribersWithRequest:(GetSubscribersRequest *)request handler:(void(^)(GetSubscribersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetSubscribers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetSubscribersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetSubscriber(GetSubscriberRequest) returns (GetSubscriberResponse)

- (void)getSubscriberWithRequest:(GetSubscriberRequest *)request handler:(void(^)(GetSubscriberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetSubscriberWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetSubscriberWithRequest:(GetSubscriberRequest *)request handler:(void(^)(GetSubscriberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetSubscriber"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetSubscriberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UnsubscribeFromNotifications(UnsubscribeFromNotificationsRequest) returns (UnsubscribeFromNotificationsResponse)

- (void)unsubscribeFromNotificationsWithRequest:(UnsubscribeFromNotificationsRequest *)request handler:(void(^)(UnsubscribeFromNotificationsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUnsubscribeFromNotificationsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUnsubscribeFromNotificationsWithRequest:(UnsubscribeFromNotificationsRequest *)request handler:(void(^)(UnsubscribeFromNotificationsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UnsubscribeFromNotifications"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[UnsubscribeFromNotificationsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Notify(NotifyRequest) returns (NotifyResponse)

- (void)notifyWithRequest:(NotifyRequest *)request handler:(void(^)(NotifyResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToNotifyWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToNotifyWithRequest:(NotifyRequest *)request handler:(void(^)(NotifyResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Notify"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[NotifyResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark LinkAccounts(LinkAccountsRequest) returns (LinkAccountsResponse)

/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Bank accounts.
 * 
 * 
 */
- (void)linkAccountsWithRequest:(LinkAccountsRequest *)request handler:(void(^)(LinkAccountsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToLinkAccountsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Bank accounts.
 * 
 * 
 */
- (GRPCProtoCall *)RPCToLinkAccountsWithRequest:(LinkAccountsRequest *)request handler:(void(^)(LinkAccountsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"LinkAccounts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[LinkAccountsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetAccount(GetAccountRequest) returns (GetAccountResponse)

- (void)getAccountWithRequest:(GetAccountRequest *)request handler:(void(^)(GetAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccountWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccountWithRequest:(GetAccountRequest *)request handler:(void(^)(GetAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccount"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetAccountResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetAccounts(GetAccountsRequest) returns (GetAccountsResponse)

- (void)getAccountsWithRequest:(GetAccountsRequest *)request handler:(void(^)(GetAccountsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccountsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccountsWithRequest:(GetAccountsRequest *)request handler:(void(^)(GetAccountsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccounts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetAccountsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SetAccountName(SetAccountNameRequest) returns (SetAccountNameResponse)

- (void)setAccountNameWithRequest:(SetAccountNameRequest *)request handler:(void(^)(SetAccountNameResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSetAccountNameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSetAccountNameWithRequest:(SetAccountNameRequest *)request handler:(void(^)(SetAccountNameResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SetAccountName"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SetAccountNameResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetBalance(GetBalanceRequest) returns (GetBalanceResponse)

- (void)getBalanceWithRequest:(GetBalanceRequest *)request handler:(void(^)(GetBalanceResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetBalanceWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetBalanceWithRequest:(GetBalanceRequest *)request handler:(void(^)(GetBalanceResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetBalance"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetBalanceResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetTransaction(GetTransactionRequest) returns (GetTransactionResponse)

- (void)getTransactionWithRequest:(GetTransactionRequest *)request handler:(void(^)(GetTransactionResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetTransactionWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetTransactionWithRequest:(GetTransactionRequest *)request handler:(void(^)(GetTransactionResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetTransaction"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetTransactionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetTransactions(GetTransactionsRequest) returns (GetTransactionsResponse)

- (void)getTransactionsWithRequest:(GetTransactionsRequest *)request handler:(void(^)(GetTransactionsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetTransactionsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetTransactionsWithRequest:(GetTransactionsRequest *)request handler:(void(^)(GetTransactionsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetTransactions"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetTransactionsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CreateTransferToken(CreateTransferTokenRequest) returns (CreateTransferTokenResponse)

/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Transfer Tokens.
 * 
 * 
 */
- (void)createTransferTokenWithRequest:(CreateTransferTokenRequest *)request handler:(void(^)(CreateTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateTransferTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Transfer Tokens.
 * 
 * 
 */
- (GRPCProtoCall *)RPCToCreateTransferTokenWithRequest:(CreateTransferTokenRequest *)request handler:(void(^)(CreateTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateTransferToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[CreateTransferTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetTransferToken(GetTransferTokenRequest) returns (GetTransferTokenResponse)

- (void)getTransferTokenWithRequest:(GetTransferTokenRequest *)request handler:(void(^)(GetTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetTransferTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetTransferTokenWithRequest:(GetTransferTokenRequest *)request handler:(void(^)(GetTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetTransferToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetTransferTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetTransferTokens(GetTransferTokensRequest) returns (GetTransferTokensResponse)

- (void)getTransferTokensWithRequest:(GetTransferTokensRequest *)request handler:(void(^)(GetTransferTokensResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetTransferTokensWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetTransferTokensWithRequest:(GetTransferTokensRequest *)request handler:(void(^)(GetTransferTokensResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetTransferTokens"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetTransferTokensResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EndorseTransferToken(EndorseTransferTokenRequest) returns (EndorseTransferTokenResponse)

- (void)endorseTransferTokenWithRequest:(EndorseTransferTokenRequest *)request handler:(void(^)(EndorseTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEndorseTransferTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEndorseTransferTokenWithRequest:(EndorseTransferTokenRequest *)request handler:(void(^)(EndorseTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EndorseTransferToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[EndorseTransferTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CancelTransferToken(CancelTransferTokenRequest) returns (CancelTransferTokenResponse)

- (void)cancelTransferTokenWithRequest:(CancelTransferTokenRequest *)request handler:(void(^)(CancelTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCancelTransferTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCancelTransferTokenWithRequest:(CancelTransferTokenRequest *)request handler:(void(^)(CancelTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CancelTransferToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[CancelTransferTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CreateAccessToken(CreateAccessTokenRequest) returns (CreateAccessTokenResponse)

/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Access Tokens.
 * 
 * 
 */
- (void)createAccessTokenWithRequest:(CreateAccessTokenRequest *)request handler:(void(^)(CreateAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateAccessTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Access Tokens.
 * 
 * 
 */
- (GRPCProtoCall *)RPCToCreateAccessTokenWithRequest:(CreateAccessTokenRequest *)request handler:(void(^)(CreateAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateAccessToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[CreateAccessTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetAccessToken(GetAccessTokenRequest) returns (GetAccessTokenResponse)

- (void)getAccessTokenWithRequest:(GetAccessTokenRequest *)request handler:(void(^)(GetAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccessTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccessTokenWithRequest:(GetAccessTokenRequest *)request handler:(void(^)(GetAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccessToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetAccessTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetAccessTokens(GetAccessTokensRequest) returns (GetAccessTokensResponse)

- (void)getAccessTokensWithRequest:(GetAccessTokensRequest *)request handler:(void(^)(GetAccessTokensResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccessTokensWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccessTokensWithRequest:(GetAccessTokensRequest *)request handler:(void(^)(GetAccessTokensResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccessTokens"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetAccessTokensResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark EndorseAccessToken(EndorseAccessTokenRequest) returns (EndorseAccessTokenResponse)

- (void)endorseAccessTokenWithRequest:(EndorseAccessTokenRequest *)request handler:(void(^)(EndorseAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToEndorseAccessTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToEndorseAccessTokenWithRequest:(EndorseAccessTokenRequest *)request handler:(void(^)(EndorseAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"EndorseAccessToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[EndorseAccessTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark CancelAccessToken(CancelAccessTokenRequest) returns (CancelAccessTokenResponse)

- (void)cancelAccessTokenWithRequest:(CancelAccessTokenRequest *)request handler:(void(^)(CancelAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCancelAccessTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCancelAccessTokenWithRequest:(CancelAccessTokenRequest *)request handler:(void(^)(CancelAccessTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CancelAccessToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[CancelAccessTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RedeemTransferToken(RedeemTransferTokenRequest) returns (RedeemTransferTokenResponse)

/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Token Transfers.
 * 
 * 
 */
- (void)redeemTransferTokenWithRequest:(RedeemTransferTokenRequest *)request handler:(void(^)(RedeemTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRedeemTransferTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * //////////////////////////////////////////////////////////////////////////////////////////////////
 * Token Transfers.
 * 
 * 
 */
- (GRPCProtoCall *)RPCToRedeemTransferTokenWithRequest:(RedeemTransferTokenRequest *)request handler:(void(^)(RedeemTransferTokenResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RedeemTransferToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RedeemTransferTokenResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetTransfer(GetTransferRequest) returns (GetTransferResponse)

- (void)getTransferWithRequest:(GetTransferRequest *)request handler:(void(^)(GetTransferResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetTransferWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetTransferWithRequest:(GetTransferRequest *)request handler:(void(^)(GetTransferResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetTransfer"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetTransferResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetTransfers(GetTransfersRequest) returns (GetTransfersResponse)

- (void)getTransfersWithRequest:(GetTransfersRequest *)request handler:(void(^)(GetTransfersResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetTransfersWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetTransfersWithRequest:(GetTransfersRequest *)request handler:(void(^)(GetTransfersResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetTransfers"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetTransfersResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
