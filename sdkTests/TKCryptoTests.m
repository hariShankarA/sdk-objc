//
// Created by Alexey Kalinichenko on 9/15/16.
// Copyright (c) 2016 Token Inc. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "TKCrypto.h"
#import "TKSecretKey.h"
#import "Token.pbobjc.h"

@interface TKCryptoTests : XCTestCase
@end

@implementation TKCryptoTests

/**
 * base64 encoding/decoding.
 */
- (void)testSignAndVerify {
    Token *token = [Token message];
    token.payment.amount = 100.23;

    TKSecretKey *key = [TKCrypto generateKey];
    NSString *signature = [TKCrypto sign:token
                                usingKey:key];
    XCTAssert(signature.length > 0);

    bool success = [TKCrypto verifySignature:signature
                                  forMessage:token
                              usingPublicKey:key.publicKey];
    XCTAssert(success);
}

@end