//
//  TKError.m
//  TokenSdk
//
//  Created by Vadim on 2/1/17.
//  Copyright © 2017 Token Inc. All rights reserved.
//

#import "TKError.h"

static NSString* kTokenErrorDomain = @"io.tokensdk";

@implementation NSError (TokenSdk)

+ (instancetype)errorFromErrorCode:(TKErrorCode)errorCode details:(NSString *)details {
    return [NSError errorWithDomain:kTokenErrorDomain
                               code:errorCode
                           userInfo:@{ NSLocalizedDescriptionKey: details }];
}

+ (instancetype)errorFromTransferTokenStatus:(TransferTokenStatus)status {
    return [NSError errorWithDomain:kTokenErrorDomain
                               code:status
                           userInfo:@{ NSLocalizedDescriptionKey:[NSString
                                           stringWithFormat:@"Failed to create token %d", status] }];
}

@end
