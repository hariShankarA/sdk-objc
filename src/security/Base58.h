//
//  Base58.h
//  TokenSdk
//
//  Created by Colin Man on 7/25/17.
//  Copyright © 2017 Token Inc. All rights reserved.
//

#ifndef Base58_h
#define Base58_h

#include <stdio.h>
#include <stdbool.h>

extern bool (*b58_sha256_impl)(void *, const void *, size_t);

extern bool b58tobin(void *bin, size_t *binsz, const char *b58, size_t b58sz);
extern int b58check(const void *bin, size_t binsz, const char *b58, size_t b58sz);

extern bool b58enc(char *b58, size_t *b58sz, const void *bin, size_t binsz);
extern bool b58check_enc(char *b58c, size_t *b58c_sz, uint8_t ver, const void *data, size_t datasz);

#endif /* Base58_h */
