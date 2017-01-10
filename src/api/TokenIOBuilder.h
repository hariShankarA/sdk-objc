//
//  Created by Alexey Kalinichenko on 9/13/16.
//  Copyright © 2016 Token Inc. All rights reserved.
//

#import <objc/NSObject.h>


@class TokenIO;
@class TokenIOAsync;
@protocol TKCryptoEngineFactory;

/**
 * A builder that is used to customize and create `TokenIO` and 
 * `TokenIOAsync` instances that serve as the Token API entry points.
 */
@interface TokenIOBuilder : NSObject

@property (readwrite, copy) NSString *host;
@property (readwrite) int port;
@property (readwrite) int timeoutMs;
@property (readwrite) BOOL useSsl;
@property (readwrite) id<TKCryptoEngineFactory> cryptoEngine;

- (id)init;

/**
 * Creates a synchronous Token client object that is used as the 
 * entry point to the Token API.
 */
- (TokenIO *)build;

/**
 * Creates an asynchronous Token client object that is used as the
 * entry point to the Token API.
 */
- (TokenIOAsync *)buildAsync;

@end
