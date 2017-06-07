//
//  Created by Alexey Kalinichenko on 9/13/16.
//  Copyright © 2016 Token Inc. All rights reserved.
//

#ifndef TokenIOAsync_h
#define TokenIOAsync_h

#import <objc/NSObject.h>

#import "TKTypedef.h"


@class GatewayService;
@class TokenIOBuilder;
@class TKMember;
@class TokenIO;
@protocol TKCryptoEngineFactory;
@class TokenPayload;

/**
 * Use this class to create to create a new member using `createMember`
 * method or login an existing member using `loginMember`.
 *
 * <p>
 * The class provides async API with `TokenIO` providing a synchronous version.
 * `TokenIO` instance can be obtained by calling `sync` method.
 * </p>
 */
@interface TokenIOAsync : NSObject

@property (readonly, retain) TokenIO *sync;

/**
 * Creates a new builder object that can be used to customize the `TokenIOAsync`
 * instance being built.
 */
+ (TokenIOBuilder *)builder;

/**
 * Creates a new instance that connects to the specified Token host and port.
 *
 * @param host host to connect to
 * @param port gRPC port to connect to
 * @param timeout timeout value in ms
 * @param crypto crypto module to use
 * @param useSsl use SSL if true
 * @param globalRpcErrorCallback_ global RPC error callback to invoke on error
 */
- (id)initWithHost:(NSString *)host
              port:(int)port
         timeoutMs:(int)timeout
            crypto:(id<TKCryptoEngineFactory>)cryptoEngineFactory_
            useSsl:(BOOL)useSsl
globalRpcErrorCallback:(OnError)globalRpcErrorCallback_;

/**
 * Creates a new Token member with a pair of auto generated keys and the
 * given username.
 *
 * @param username member username to use, must be unique
 * @return newly created member
 */
- (void)createMember:(NSString *)username
            onSucess:(OnSuccessWithTKMemberAsync)onSuccess
             onError:(OnError)onError;

/**
 * Provisions a new device for an existing user. The call generates a set
 * of keys that are returned back. The keys need to be approved by an
 * existing device/keys.
 *
 * @param username member id to provision the device for
 */
- (void)provisionDevice:(NSString *)username
              onSuccess:(OnSuccessWithDeviceInfo)onSuccess
                onError:(OnError)onError;

/**
 * Checks if a given username already exists.
 *
 * @param username username to check
 */
- (void)usernameExists:(NSString *)username
          onSuccess:(OnSuccessWithBoolean)onSuccess
            onError:(OnError)onError;

/**
 * Looks up member id for a given username.
 *
 * @param username username to check
 * @return member id if username already exists, nil otherwise
 */
- (void)getMemberId:(NSString *)username
          onSuccess:(OnSuccessWithString)onSuccess
            onError:(OnError)onError;

/**
 * Logs in an existing member to the system.
 *
 * @param memberId member id
 * @param key secret/public key pair to use
 * @return logged in member
 */
- (void)loginMember:(NSString *)memberId
           onSucess:(OnSuccessWithTKMemberAsync)onSuccess
            onError:(OnError)onError;

/**
 * Sends a notification to request payment
 *
 * @param username username to notify
 * @param token payload of a token to be sent
 * @param onSuccess invoked if successful
 * @param onError invoked if failed
 */
- (void)notifyPaymentRequest:(NSString *)username
                       token:(TokenPayload *)token
                   onSuccess:(OnSuccess)onSuccess
                     onError:(OnError)onError;

/**
 * Sends a notification to request linking of accounts
 *
 * @param username username to notify
 * @param authorization bank authorization, generated by the bank
 * @param onSuccess invoked if successful
 * @param onError invoked if failed
 */
- (void)notifyLinkAccounts:(NSString *)username
             authorization:(BankAuthorization *)authorization
                 onSuccess:(OnSuccess)onSuccess
                   onError:(OnError)onError;

/**
 * Sends a notification to request adding of a key
 *
 * @param username username to notify
 * @param keyName optional name of key
 * @param key the key
 * @param onSuccess invoked if successful
 * @param onError invoked if failed
 */
- (void)notifyAddKey:(NSString *)username
             keyName:(NSString *)keyName
                 key:(Key *)key
           onSuccess:(OnSuccess)onSuccess
             onError:(OnError)onError;

/**
 * Sends a notification to request linking of accounts and adding of a key
 *
 * @param username username to notify
 * @param authorization bank authorization, generated by the bank
 * @param keyName name of key
 * @param key the key
 * @param onSuccess invoked if successful
 * @param onError invoked if failed
 */
- (void)notifyLinkAccountsAndAddKey:(NSString *)username
                      authorization:(BankAuthorization *)authorization
                            keyName:(NSString *)keyName
                                key:(Key *)key
                          onSuccess:(OnSuccess)onSuccess
                            onError:(OnError)onError;

@end

#endif
