//
// Created by Alexey Kalinichenko on 9/13/16.
// Copyright (c) 2016 Token Inc. All rights reserved.
//

#import "TKAccount.h"
#import "TKMember.h"
#import "TKMemberAsync.h"
#import "TKSecretKey.h"
#import "TKRpcSyncCall.h"
#import "TKAccountAsync.h"
#import "PagedArray.h"


@implementation TKMember

+ (TKMember *)member:(TKMemberAsync *)delegate {
    return [[TKMember alloc] initWithDelegate:delegate];
}

- (id)initWithDelegate:(TKMemberAsync *)delegate {
    self = [super init];
    if (self) {
        _async = delegate;
    }
    return self;
}

- (NSString *)id {
    return self.async.id;
}

- (NSString *)firstUsername {
    return self.async.firstUsername;
}

- (NSArray<NSString *> *)publicKeys {
    return self.async.publicKeys;
}

- (NSArray<NSString *> *)usernames {
    return self.async.usernames;
}

- (TKSecretKey *)key {
    return self.async.key;
}

- (void)useAccessToken:(NSString *)accessTokenId {
    [self.async useAccessToken:accessTokenId];
}

- (void)clearAccessToken {
    [self.async clearAccessToken];
}

- (void)approveKey:(TKSecretKey *)key
             level:(Key_Level)level{
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    [call run:^{
        [self.async approveKey:key
                         level:level
                     onSuccess:^{ call.onSuccess(nil); }
                       onError:call.onError];
    }];
}

- (void)removeKey:(NSString *)keyId {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    [call run:^{
        [self.async removeKey:keyId
                    onSuccess:^{ call.onSuccess(nil); }
                      onError:call.onError];
    }];
}

- (void)addUsername:(NSString *)username {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    [call run:^{
        [self.async addUsername:username
                   onSuccess:^{ call.onSuccess(nil); }
                     onError:call.onError];
    }];
}

- (void)removeUsername:(NSString *)username {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    [call run:^{
        [self.async removeUsername:username
                      onSuccess:^{ call.onSuccess(nil); }
                        onError:call.onError];
    }];
}

- (Subscriber *)subscribeToNotifications:(NSString *)target
                                platform:(Platform)platform {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async subscribeToNotifications:target
                                    platform:platform
                                   onSuccess:call.onSuccess
                                     onError:call.onError];
    }];
}

- (NSArray<Subscriber *> *)getSubscribers {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getSubscribers:call.onSuccess
                           onError:call.onError];
    }];
}

- (Subscriber *)getSubscriber:(NSString *)subscriberId {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getSubscriber:subscriberId
                        onSuccess:call.onSuccess
                          onError:call.onError];
    }];
}

- (NSArray<Notification *> *)getNotifications {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getNotifications:call.onSuccess
                           onError:call.onError];
    }];
}

- (Notification *)getNotification:(NSString *)NotificationId {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getNotification:NotificationId
                        onSuccess:call.onSuccess
                          onError:call.onError];
    }];
}


- (void)unsubscribeFromNotifications:(NSString *)subscriberId {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    [call run:^{
        [self.async unsubscribeFromNotifications:subscriberId
                                       onSuccess:^{ call.onSuccess(nil); }
                                         onError:call.onError];
    }];
}

- (NSArray<TKAccount*> *)linkAccounts:(NSString *)bankId
                          withPayloads:(NSArray<SealedMessage*> *)payloads {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async linkAccounts:bankId
                     withPayloads:payloads
                       onSuccess:
         ^(NSArray<TKAccountAsync *> *accounts) {
             call.onSuccess([self _asyncToSync:accounts]);
         }
                         onError:call.onError];
    }];
}

- (NSArray<TKAccount *> *)getAccounts {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async
         getAccounts:
         ^(NSArray<TKAccountAsync *> *accounts) {
             call.onSuccess([self _asyncToSync:accounts]);
         }
         onError:call.onError];
    }];
}

- (TKAccount *)getAccount:(NSString *)accountId {
    TKRpcSyncCall<TKAccount *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async
         getAccount:accountId
         onSuccess:
         ^(TKAccountAsync *account) {
             call.onSuccess(account.sync);
         }
         onError:call.onError];
    }];
}

- (Transfer *)getTransfer:(NSString *)transferId {
    TKRpcSyncCall<Transfer *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getTransfer:transferId
                      onSuccess:call.onSuccess
                        onError:call.onError];
    }];
}

- (PagedArray<Transfer *> *)getTransfersOffset:(NSString *)offset
                                         limit:(int)limit {
    return [self getTransfersOffset:offset
                              limit:limit
                            tokenId:nil];
}

- (PagedArray<Transfer *> *)getTransfersOffset:(NSString *)offset
                                         limit:(int)limit
                                       tokenId:(NSString *)tokenId {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getTransfersOffset:offset
                                 limit:limit
                               tokenId:tokenId
                             onSuccess:call.onSuccess
                               onError:call.onError];
    }];
}

- (AddressRecord *)addAddress:(Address *)address
                     withName:(NSString *)name {
    TKRpcSyncCall<AddressRecord *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async addAddress:address
                      withName:name
                     onSuccess:call.onSuccess
                       onError:call.onError];
    }];
}

- (AddressRecord *)getAddressWithId:(NSString *)addressId {
    TKRpcSyncCall<AddressRecord *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getAddressWithId:addressId
                           onSuccess:call.onSuccess
                             onError:call.onError];
    }];
}

- (NSArray<AddressRecord *> *)getAddresses {
    TKRpcSyncCall<NSArray<AddressRecord *> *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getAddresses:call.onSuccess
                         onError:call.onError];
    }];
}

- (void)deleteAddressWithId:(NSString *)addressId {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    [call run:^{
        [self.async deleteAddressWithId:addressId
                              onSuccess:^{ call.onSuccess(nil); }
                                onError:call.onError];
    }];
}

- (Token *)createTransferToken:(NSString *)redeemerUsername
                    forAccount:(NSString *)accountId
                        amount:(double)amount
                      currency:(NSString *)currency {
    return [self createTransferToken:redeemerUsername
                          forAccount:accountId
                              amount:amount
                            currency:currency
                         description:nil];
}

- (Token *)createTransferToken:(NSString *)redeemerUsername
                    forAccount:(NSString *)accountId
                        amount:(double)amount
                      currency:(NSString *)currency
                   description:(NSString *)description {
    TKRpcSyncCall<Token *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async createTransferToken:redeemerUsername
                             forAccount:accountId
                                   amount:amount
                                 currency:currency
                              description:description
                                onSuccess:call.onSuccess
                                  onError:call.onError];
    }];
}

- (Token *)createAccessToken:(AccessTokenConfig *)accessTokenConfig {
    TKRpcSyncCall<Token *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async createAccessToken:accessTokenConfig
                            onSuccess:call.onSuccess
                              onError:call.onError];
    }];
}

- (TokenOperationResult *)replaceAccessToken:(Token *)tokenToCancel
                           accessTokenConfig:(AccessTokenConfig *)accessTokenConfig {
    TKRpcSyncCall<TokenOperationResult *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async replaceAccessToken:tokenToCancel
                     accessTokenConfig:accessTokenConfig
                             onSuccess:call.onSuccess
                               onError:call.onError];
    }];
}

- (TokenOperationResult *)replaceAndEndorseAccessToken:(Token *)tokenToCancel
                                     accessTokenConfig:(AccessTokenConfig *)accessTokenConfig {
    TKRpcSyncCall<TokenOperationResult *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async replaceAndEndorseAccessToken:tokenToCancel
                               accessTokenConfig:accessTokenConfig
                                       onSuccess:call.onSuccess
                                         onError:call.onError];
    }];
}

- (Token *)getToken:(NSString *)tokenId {
    TKRpcSyncCall<Token *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getToken:tokenId
                   onSuccess:call.onSuccess
                     onError:call.onError];
    }];
}

- (PagedArray<Token *> *)getTransferTokensOffset:(NSString *)offset
                                           limit:(int)limit {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getTransferTokensOffset:offset
                                      limit:limit
                                  onSuccess:call.onSuccess
                                    onError:call.onError];
    }];
}

- (PagedArray<Token *> *)getAccessTokensOffset:(NSString *)offset
                                         limit:(int)limit {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getAccessTokensOffset:offset
                                    limit:limit
                                onSuccess:call.onSuccess
                                  onError:call.onError];
    }];
}

- (TokenOperationResult *)endorseToken:(Token *)token {
    TKRpcSyncCall<TokenOperationResult *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async endorseToken:token
                       onSuccess:call.onSuccess
                         onError:call.onError];
    }];
}

- (TokenOperationResult *)cancelToken:(Token *)token {
    TKRpcSyncCall<TokenOperationResult *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async cancelToken:token
                      onSuccess:call.onSuccess
                        onError:call.onError];
    }];
}

- (Transfer *)createTransfer:(Token *)token {
    return [self createTransfer:token
                         amount:nil
                       currency:nil
                    description:nil];
}

- (Transfer *)createTransfer:(Token *)token
                      amount:(NSNumber *)amount
                    currency:(NSString *)currency
                 description:(NSString *)description {
    TKRpcSyncCall<Transfer *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async createTransfer:token
                            amount:amount
                          currency:currency
                       description:description
                         onSuccess:call.onSuccess
                           onError:call.onError];
    }];
}

- (Transaction *)getTransaction:(NSString *)transactionId
                     forAccount:(NSString *)accountId {
    TKRpcSyncCall<Transaction *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getTransaction:transactionId
                        forAccount:accountId
                         onSuccess:call.onSuccess
                           onError:call.onError];
    }];
}

- (PagedArray<Transaction *> *)getTransactionsOffset:(NSString *)offset
                                               limit:(int)limit
                                          forAccount:(NSString *)accountId {
    TKRpcSyncCall<id> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getTransactionsOffset:offset
                                    limit:limit
                               forAccount:accountId
                                onSuccess:call.onSuccess
                                  onError:call.onError];
    }];
}

- (Money *)getBalance:(NSString *)accountId {
    TKRpcSyncCall<Money *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async getBalance:accountId
                     onSuccess:call.onSuccess
                       onError:call.onError];
    }];
}

#pragma mark private

- (NSArray<TKAccount *> *)_asyncToSync:(NSArray<TKAccountAsync *> *)accounts {
    NSMutableArray<TKAccount *> *sync = [NSMutableArray array];
    for (TKAccountAsync *a in accounts) {
        [sync addObject:a.sync];
    }
    return sync;
}

@end
