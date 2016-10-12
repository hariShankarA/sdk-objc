//
//  Created by Alexey Kalinichenko on 9/13/16.
//  Copyright © 2016 Token Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TKMember.h"
#import "TokenIO.h"
#import "TokenIOBuilder.h"
#import "TokenIOAsync.h"
#import "TKSecretKey.h"
#import "TKRpcSyncCall.h"
#import "TKMemberAsync.h"


@implementation TokenIO

+ (TokenIOBuilder *)builder {
    return [[TokenIOBuilder alloc] init];
}

- (id)initWithDelegate:(TokenIOAsync *)delegate {
    self = [super init];
    if (self) {
        _async = delegate;
    }
    return self;
}

- (TKMember *)createMember:(NSString *)alias {
    TKRpcSyncCall<TKMember *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async createMember:alias
                        onSucess:^(TKMemberAsync *member) { call.onSuccess(member.sync); }
                         onError: call.onError];
    }];
}

- (NSNumber *)aliasExists:(NSString *)alias {
    TKRpcSyncCall<NSNumber *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async aliasExists:alias
                      onSuccess:call.onSuccess
                        onError:call.onError];
    }];
}

- (TKMember *)loginMember:(NSString *)memberId secretKey:(TKSecretKey *)secretKey {
    TKRpcSyncCall<TKMember *> *call = [TKRpcSyncCall create];
    return [call run:^{
        [self.async
                loginMember:memberId
                  secretKey:secretKey
                   onSucess:^(TKMemberAsync *member) { call.onSuccess(member.sync); }
                    onError:call.onError
        ];
    }];
}

- (void)notifyLinkAccounts:(NSString * )alias
                    bankId:(NSString *)bankId
       accountsLinkPayload:(NSString *) accountsLinkPayload {
    TKRpcSyncCall<TKMember *> *call = [TKRpcSyncCall create];
    [call run:^{
        [self.async notifyLinkAccounts:alias
                                bankId:bankId
                   accountsLinkPayload:accountsLinkPayload
                             onSuccess:^(void) {call.onSuccess(nil);}
                               onError:call.onError
         ];
    }];
}

- (void)notifyAddKey:(NSString * )alias
           publicKey:(NSString *)publicKey
                tags:(NSMutableArray<NSString*> *)tags {
    TKRpcSyncCall<TKMember *> *call = [TKRpcSyncCall create];
    [call run:^{
        [self.async notifyAddKey:alias
                       publicKey:publicKey
                            tags:tags
                             onSuccess:^(void) {call.onSuccess(nil);}
                               onError:call.onError
         ];
    }];
}

- (void)notifyLinkAccountsAndAddKey:(NSString * )alias
                             bankId:(NSString *)bankId
                accountsLinkPayload:(NSString *) accountsLinkPayload
                          publicKey:(NSString *)publicKey
                               tags:(NSMutableArray<NSString*> *)tags {
    TKRpcSyncCall<TKMember *> *call = [TKRpcSyncCall create];
    [call run:^{
        [self.async notifyLinkAccountsAndAddKey:alias
                          bankId:bankId
             accountsLinkPayload:accountsLinkPayload
                       publicKey:publicKey
                            tags:tags
                       onSuccess:^(void) {call.onSuccess(nil);}
                         onError:call.onError
         ];
    }];
}




@end
