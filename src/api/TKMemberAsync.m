//
// Created by Alexey Kalinichenko on 9/13/16.
// Copyright (c) 2016 Token Inc. All rights reserved.
//

#import <Protobuf/GPBMessage.h>
#import "Money.pbobjc.h"
#import "Member.pbobjc.h"
#import "Security.pbobjc.h"
#import "Token.pbobjc.h"
#import "Transfer.pbobjc.h"
#import "gateway/Gateway.pbrpc.h"

#import "TKAccount.h"
#import "TKMember.h"
#import "TKMemberAsync.h"
#import "TKSecretKey.h"
#import "TKClient.h"
#import "TKAccountAsync.h"
#import "TKUtil.h"


@implementation TKMemberAsync {
    TKClient *client;
    Member *member;
}

+ (TKMemberAsync *)member:(Member *)member
                secretKey:(TKSecretKey *)key
                useClient:(TKClient *)client {
    return [[TKMemberAsync alloc] initWithMember:member secretKey:key useClient:client];
}

- (id)initWithMember:(Member *)member_
           secretKey:(TKSecretKey *)key
           useClient:(TKClient *)client_ {
    self = [super init];
    
    if (self) {
        _key = key;
        member = member_;
        client = client_;
    }
    
    return self;
}

- (TKMember *)sync {
    return [TKMember member:self];
}

- (NSString *)id {
    return member.id_p;
}

- (NSString *)firstUsername {
    return member.usernamesArray[0];
}

- (NSArray<NSString *> *)publicKeys {
    NSMutableArray<NSString *> *result = [NSMutableArray array];
    for (Key *key in member.keysArray) {
        [result addObject:key.publicKey];
    }
    return result;
}

- (NSArray<NSString *> *)usernames {
    return [member.usernamesArray copy];
}

- (void)approveKey:(TKSecretKey *)key
             level:(Key_Level)level
         onSuccess:(OnSuccess)onSuccess
           onError:(OnError)onError {
    [self approvePublicKey:key.publicKeyStr
                     level:level
                 onSuccess:onSuccess
                   onError:onError];
}

- (void)approvePublicKey:(NSString *)publicKey
                   level:(Key_Level)level
               onSuccess:(OnSuccess)onSuccess
                 onError:(OnError)onError {
    __strong typeof(member) retainedMember = member;
    
    [client addKey:publicKey
                to:member
             level:level
         onSuccess:
     ^(Member *m) {
         [retainedMember clear];
         [retainedMember mergeFrom:m];
         onSuccess();
     }
           onError:onError];
}

- (void)removeKey:(NSString *)keyId
        onSuccess:(OnSuccess)onSuccess
          onError:(OnError)onError {
    [client removeKey:keyId
                 from:member
            onSuccess:
     ^(Member *m) {
         [member clear];
         [member mergeFrom:m];
         onSuccess();
     }
              onError:onError];
}

- (void)addUsername:(NSString *)username
       onSuccess:(OnSuccess)onSuccess
         onError:(OnError)onError {
    __strong typeof(member) retainedMember = member;
    
    [client addUsername:username
                  to:member
           onSuccess:
     ^(Member *m) {
         [retainedMember clear];
         [retainedMember mergeFrom:m];
         onSuccess();
     }
             onError:onError];
}

- (void)removeUsername:(NSString *)username
          onSuccess:(OnSuccess)onSuccess
            onError:(OnError)onError {
    [client removeUsername:username
                   from:member
              onSuccess:
     ^(Member *m) {
         [member clear];
         [member mergeFrom:m];
         onSuccess();
     }
                onError:onError];
}

- (void)subscribeToNotifications:(NSString *)provider
                          target:(NSString *)target
                        platform:(Platform)platform
                       onSuccess:(OnSuccessWithSubscriber)onSuccess
                         onError:(OnError)onError {
    [client subscribeToNotifications:provider
                              target:target
                            platform:platform
                           onSuccess:onSuccess
                             onError:onError];
}

- (void)getSubscribers:(OnSuccessWithSubscribers)onSuccess
               onError:(OnError)onError {
    [client getSubscribers:onSuccess
                   onError:onError];
}

- (void)getSubscriber:(NSString *)subscriberId
            onSuccess:(OnSuccessWithSubscriber)onSuccess
              onError:(OnError)onError {
    [client getSubscriber:subscriberId
                onSuccess:onSuccess
                  onError:onError];
}

- (void)unsubscribeFromNotifications:(NSString *)subscriberId
                           onSuccess:(OnSuccess)onSuccess
                             onError:(OnError)onError {
    [client unsubscribeFromNotifications:subscriberId
                               onSuccess:onSuccess
                                 onError:onError];
}


- (void)linkAccounts:(NSString *)bankId
         withPayload:(NSString *)payload
           onSuccess:(OnSuccessWithTKAccountsAsync)onSuccess
             onError:(OnError)onError {
    [client linkAccounts:bankId
                 payload:payload
               onSuccess:
     ^(NSArray<Account *> *accounts) {
         onSuccess([self _mapAccounts:accounts]);
     }
                 onError:onError];
}

- (void)getAccounts:(OnSuccessWithTKAccountsAsync)onSuccess
            onError:(OnError)onError {
    [client getAccounts:
     ^(NSArray<Account *> *accounts) {
         onSuccess([self _mapAccounts:accounts]);
     }
                onError:onError];
}

- (void)getAccount:(NSString *)accountId
         onSuccess:(OnSuccessWithTKAccountAsync)onSuccess
           onError:(OnError)onError {
    [client getAccount:accountId
             onSuccess:^(Account * account) {
                 onSuccess([self _mapAccount:account]);
             }
               onError:onError];
}

- (void)getTransfer:(NSString *)transferId
          onSuccess:(OnSuccessWithTransfer)onSuccess
            onError:(OnError)onError {
    [client getTransfer:transferId
              onSuccess:onSuccess
                onError:onError];
}

- (void)getTransfersOffset:(NSString *)offset
                     limit:(int)limit
                 onSuccess:(OnSuccessWithTransfers)onSuccess
                   onError:(OnError)onError {
    [self getTransfersOffset:offset
                       limit:limit
                     tokenId:nil
                   onSuccess:onSuccess
                     onError:onError];
}

- (void)getTransfersOffset:(NSString *)offset
                     limit:(int)limit
                   tokenId:(NSString *)tokenId
                 onSuccess:(OnSuccessWithTransfers)onSuccess
                   onError:(OnError)onError {
    [client getTransfersOffset:offset
                         limit:limit
                       tokenId:tokenId
                     onSuccess:onSuccess
                       onError:onError];
}

- (void)addAddressWithName:(NSString *)name
                  withData:(NSString *)data
                 onSuccess:(OnSuccessWithAddress)onSuccess
                   onError:(OnError)onError {
    [client addAddressWithName:name
                      withData:data
                     onSuccess:onSuccess
                       onError:onError];
}

- (void)getAddressWithId:(NSString *)addressId
               onSuccess:(OnSuccessWithAddress)onSuccess
                 onError:(OnError)onError {
    [client getAddressById:addressId
                 onSuccess:onSuccess
                   onError:onError];
}

- (void)getAddresses:(OnSuccessWithAddresses)onSuccess
             onError:(OnError)onError {
    [client getAddresses:onSuccess
                 onError:onError];
}

- (void)deleteAddressWithId:(NSString *)addressId
                  onSuccess:(OnSuccess)onSuccess
                    onError:(OnError)onError {
    [client deleteAddressById:addressId
                    onSuccess:onSuccess
                      onError:onError];
}

- (void)createTokenForAccount:(NSString *)accountId
                       amount:(double)amount
                     currency:(NSString *)currency
                    onSuccess:(OnSuccessWithToken)onSuccess
                      onError:(OnError)onError {
    [self createTokenForAccount:accountId
                         amount:amount
                       currency:currency
                  redeemerUsername:nil
                    description:nil
                      onSuccess:onSuccess
                        onError:onError];
}

- (void)createTokenForAccount:(NSString *)accountId
                       amount:(double)amount
                     currency:(NSString *)currency
                redeemerUsername:(NSString *)redeemerUsername
                  description:(NSString *)description
                    onSuccess:(OnSuccessWithToken)onSuccess
                      onError:(OnError)onError {
    
    TokenMember *payer = [TokenMember message];
    payer.id_p = self.id;
    
    TokenPayload *payload = [TokenPayload message];
    payload.version = @"1.0";
    payload.nonce = [TKUtil nonce];
    payload.from = payer;
    payload.transfer.amount = [NSString stringWithFormat:@"%g", amount];
    payload.transfer.currency = currency;
    payload.transfer.instructions.source.accountId = accountId;
    
    if (redeemerUsername) {
        payload.transfer.redeemer.username = redeemerUsername;
    }
    
    if (description) {
        payload.description_p = description;
    }
    
    [client createToken:payload
              onSuccess:^(Token *token) { onSuccess(token); }
                onError:onError];
}

- (void)getToken:(NSString *)tokenId
       onSuccess:(OnSuccessWithToken)onSuccess
         onError:(OnError)onError {
    [client getToken:tokenId
           onSuccess:onSuccess
             onError:onError];
}

- (void)getTransferTokensOffset:(NSString *)offset
                          limit:(int)limit
                      onSuccess:(OnSuccessWithTokens)onSuccess
                        onError:(OnError)onError {
    [client getTokensOfType:GetTokensRequest_Type_Transfer
                     offset:offset
                      limit:limit
                  onSuccess:onSuccess
                    onError:onError];
}

- (void)endorseToken:(Token *)token
           onSuccess:(OnSuccessWithToken)onSuccess
             onError:(OnError)onError {
    [client endorseToken:token
               onSuccess:onSuccess
                 onError:onError];
    
}

- (void)cancelToken:(Token *)token
          onSuccess:(OnSuccessWithToken)onSuccess
            onError:(OnError)onError {
    [client cancelToken:token
              onSuccess:onSuccess
                onError:onError];
}

- (void)createTransfer:(Token *)token
             onSuccess:(OnSuccessWithTransfer)onSuccess
               onError:(OnError)onError {
    [self createTransfer:token
                  amount:nil
                currency:nil
               onSuccess:onSuccess
                 onError:onError];
}

- (void)createTransfer:(Token *)token
                amount:(NSNumber *)amount
              currency:(NSString *)currency
             onSuccess:(OnSuccessWithTransfer)onSuccess
               onError:(OnError)onError {
    Transfer_Payload *payload = [Transfer_Payload message];
    payload.tokenId = token.id_p;
    payload.nonce = [TKUtil nonce];
    
    if (amount) {
        payload.amount.value = [amount stringValue];
    }
    if (currency) {
        payload.amount.currency = currency;
    }
    
    [client createTransfer:payload
                 onSuccess:onSuccess
                   onError:onError];
}

#pragma mark private

- (NSArray<TKAccountAsync *> *)_mapAccounts:(NSArray<Account *> *)accounts {
    NSMutableArray<TKAccountAsync *> *result = [NSMutableArray array];
    for (Account *a in accounts) {
        TKAccountAsync *tkAccount = [TKAccountAsync account:a of:self.sync useClient:client];
        [result addObject:tkAccount];
    }
    return result;
}

- (TKAccountAsync *)_mapAccount:(Account *)account {
    return [TKAccountAsync account:account of:self.sync useClient:client];
}

@end
