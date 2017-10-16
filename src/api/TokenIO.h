//
//  Created by Alexey Kalinichenko on 9/13/16.
//  Copyright © 2016 Token Inc. All rights reserved.
//

#ifndef TokenIO_h
#define TokenIO_h

#import "Alias.pbobjc.h"
#import <objc/NSObject.h>

#import "TKTypedef.h"
#import "Security.pbobjc.h"


@class GatewayService;
@class TokenIOBuilder;
@class TKMemberSync;
@class TokenIOSync;
@protocol TKCryptoEngineFactory;
@class TokenPayload;

/**
 * Use this class to create to create a new member using `createMember`
 * method or login an existing member using `loginMember`.
 *
 * <p>
 * The class provides async API 
 * </p>
 */
@interface TokenIO : NSObject

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
 * @param cryptoEngineFactory crypto module to use
 * @param useSsl use SSL if true
 * @param globalRpcErrorCallback global RPC error callback to invoke on error
 */
- (id)initWithHost:(NSString *)host
              port:(int)port
         timeoutMs:(int)timeout
      developerKey:(NSString *)developerKey
            crypto:(id<TKCryptoEngineFactory>)cryptoEngineFactory
            useSsl:(BOOL)useSsl
globalRpcErrorCallback:(OnError)globalRpcErrorCallback;

/**
 * Creates a new Token member with a pair of auto generated keys and the
 * given alias.
 *
 * @param alias member alias to use, must be unique
 */
- (void)createMember:(Alias *)alias
            onSucess:(OnSuccessWithTKMember)onSuccess
             onError:(OnError)onError;

/**
 * Provisions a new device for an existing user. The call generates a set
 * of keys that are returned back. The keys need to be approved by an
 * existing device/keys.
 *
 * @param alias member id to provision the device for
 */
- (void)provisionDevice:(Alias *)alias
              onSuccess:(OnSuccessWithDeviceInfo)onSuccess
                onError:(OnError)onError;

/**
 * Checks if a given alias already exists.
 *
 * @param alias alias to check
 */
- (void)aliasExists:(Alias *)alias
          onSuccess:(OnSuccessWithBoolean)onSuccess
            onError:(OnError)onError;

/**
 * Looks up member id for a given alias.
 *
 * @param alias alias to check
 */
- (void)getMemberId:(Alias *)alias
          onSuccess:(OnSuccessWithString)onSuccess
            onError:(OnError)onError;

/**
 * Looks up token member for a given unknown alias.
 * Set alias Alias_Type_Unknown if the alias type is unknown
 *
 * @param alias alias to check
 * @param onSuccess invoked if successful; return token member if alias already exists, nil otherwise
 */
- (void)getTokenMember:(Alias *)alias
             onSuccess:(OnSuccessWithTokenMember)onSuccess
               onError:(OnError)onError;

/**
 * Logs in an existing member to the system.
 *
 * @param memberId member id
 */
- (void)loginMember:(NSString *)memberId
           onSucess:(OnSuccessWithTKMember)onSuccess
            onError:(OnError)onError;

/**
 * Sends a notification to request payment. The from alias in tokenpayload will be notified.
 *
 * @param token payload of a token to be sent
 * @param onSuccess invoked if successful
 * @param onError invoked if failed
 */
- (void)notifyPaymentRequest:(TokenPayload *)token
                   onSuccess:(OnSuccess)onSuccess
                     onError:(OnError)onError;

/**
 * Sends a notification to request linking of accounts
 *
 * @param alias alias to notify
 * @param authorization bank authorization, generated by the bank
 * @param onSuccess invoked if successful
 * @param onError invoked if failed
 */
- (void)notifyLinkAccounts:(Alias *)alias
             authorization:(BankAuthorization *)authorization
                 onSuccess:(OnSuccess)onSuccess
                   onError:(OnError)onError;

/**
 * Sends a notification to request adding of a key
 *
 * @param alias alias to notify
 * @param keyName optional name of key
 * @param key the key
 * @param onSuccess invoked if successful
 * @param onError invoked if failed
 */
- (void)notifyAddKey:(Alias *)alias
             keyName:(NSString *)keyName
                 key:(Key *)key
           onSuccess:(OnSuccess)onSuccess
             onError:(OnError)onError;

/**
 * Sends a notification to request linking of accounts and adding of a key
 *
 * @param alias alias to notify
 * @param authorization bank authorization, generated by the bank
 * @param keyName name of key
 * @param key the key
 * @param onSuccess invoked if successful
 * @param onError invoked if failed
 */
- (void)notifyLinkAccountsAndAddKey:(Alias *)alias
                      authorization:(BankAuthorization *)authorization
                            keyName:(NSString *)keyName
                                key:(Key *)key
                          onSuccess:(OnSuccess)onSuccess
                            onError:(OnError)onError;

@end

#endif
