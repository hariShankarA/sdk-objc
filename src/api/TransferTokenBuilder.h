//
//  Created by Alexey Kalinichenko on 9/13/16.
//  Copyright © 2016 Token Inc. All rights reserved.
//

#import <objc/NSObject.h>
#import "TKTypedef.h"
#import "Transferinstructions.pbobjc.h"

@class TransferEndpoint;
@class Alias;
@class ActingAs;

/**
 * Helper class that builds Transfer Tokens.
 */
@interface TransferTokenBuilder : NSObject

/// Member, normally set by `create`.
@property (readwrite) TKMember *member;

/// Specify member ID of payer account.
@property (readwrite) NSString *fromMemberId;

/// Currency string, normally set by `create`.
@property (readwrite) NSString *currency;

/// Transfer amount, normally set by `create`.
@property (readwrite) NSDecimalNumber *lifetimeAmount;

/**
 * Specify how much redeemer can redeem each time.
 * For example, to enable 12x 10€ payments, set lifetimeAmount to 120,
 * chargeAmount to 10.
 */
@property (readwrite) NSDecimalNumber *chargeAmount;

/// Account ID from which to pay.
@property (readwrite) NSString *accountId;

/// One-time authorization for payment.
@property (readwrite) OauthBankAuthorization *authorization;

/// Expiration time in ms since 1970.
@property (readwrite) int64_t expiresAtMs;

/// Effective-at time in ms since 1970.
@property (readwrite) int64_t effectiveAtMs;

/// Redeemer, specified by alias.
@property (readwrite) Alias *redeemerAlias DEPRECATED_ATTRIBUTE;

/// Redeemer, specified by Member ID.
@property (readwrite) NSString* redeemerMemberId DEPRECATED_ATTRIBUTE;

/// Ppayer, specified by Alias.
@property (readwrite) Alias *fromAlias;

/// Payee, specified by Alias.
@property (readwrite) Alias *toAlias;

/// Payee, specified by Member ID.
@property (readwrite) NSString *toMemberId;

/// Description.
@property (readwrite) NSString *descr;

/// Purpose of payment.
@property (readwrite) PurposeOfPayment purposeOfPayment;

/// Destination bank accounts.
@property (readwrite) NSArray<TransferEndpoint*> *destinations;

/// Attachment "files".
@property (readwrite) NSArray<Attachment*> *attachments;

/// Specify reference ID. If not set, the Token system chooses a random one.
@property (readwrite) NSString *refId;

/// Set entity redeemer is acting on behalf of.
@property (readwrite) ActingAs *actingAs;

/// If receipt is requested. Default to false.
@property (readwrite) BOOL receiptRequested;

/// Set the token request ID.
@property (readwrite) NSString *tokenRequestId;

/**
 * Initializes the transfer token builder.
 *
 * @param member the payer of the token
 * @param lifetimeAmount the total lifetime amount of the token
 * @param currency the currency of the token
 * @return transfer token builder
 */
- (id)init:(TKMember *)member lifetimeAmount:(NSDecimalNumber *)lifetimeAmount currency:(NSString *)currency;

/**
 * Initializes the transfer token builder.
 *
 * @param member the payer of the token
 * @param tokenRequest token request
 * @return transfer token builder
 */
- (id)init:(TKMember *)member tokenRequest:(TokenRequest *)tokenRequest;

/**
 * Executes the request, creating the token. Throws error if external authorization is required.
 *
 * @return transfer token
 */
- (Token *)execute;

/**
 * Executes the request, creating the token, async.
 *
 * @param onSuccess invoked on success
 * @param onError invoked on error
 */
- (void)executeAsync:(OnSuccessWithToken)onSuccess
             onError:(OnError)onError;

@end
