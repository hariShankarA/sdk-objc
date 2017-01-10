//
// Created by Alexey Kalinichenko on 9/15/16.
// Copyright (c) 2016 Token Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TKTypedef.h"
#import "PagedArray.h"


@class TKMember;
@class TKAccountAsync;
@class Transaction;

/**
 * Represents a funding account in the Token system.
 * 
 * <p>
 * The class provides synchronous API with `TKAccountAsync` providing a asynchronous
 * version. `TKAccountAsync` instance can be obtained by calling `async` method.
 * </p>
 */
@interface TKAccount : NSObject

@property (atomic, readonly) TKAccountAsync *async;
@property (atomic, readonly) TKMember *member;
@property (atomic, readonly) NSString *id;
@property (atomic, readonly) NSString *name;
@property (atomic, readonly) NSString *bankId;

+ (TKAccount *)account:(TKAccountAsync *)delegate;

/**
 * Looks up account balance.
 *
 * @param onSuccess invoked on success
 * @param onError invoked on error
 */
- (Money *)getBalance;

/**
 * Looks up an existing transaction. Doesn't have to be a transaction for a token transfer.
 *
 * @param transactionId ID of the transaction
 * @return a looked up transaction
 */
- (Transaction *)getTransaction:(NSString *)transactionId;

/**
 * Looks up existing transactions. This is a full list of transactions with token transfers
 * being a subset.
 *
 * @param offset offset to start at
 * @param limit max number of records to return
 * @return a list of looked up transactions
 */
- (PagedArray<Transaction *> *)getTransactionsOffset:(NSString *)offset
                                               limit:(int)limit;

@end
