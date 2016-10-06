#import "bankapi/Banklink.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
  #import <Protobuf/Any.pbobjc.h>
#else
  #import "google/protobuf/Any.pbobjc.h"
#endif
#import "Money.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol AccountLinkingService <NSObject>

#pragma mark AuthorizeLinkAccounts(AuthorizeLinkAccountsRequest) returns (AuthorizeLinkAccountsResponse)

- (void)authorizeLinkAccountsWithRequest:(AuthorizeLinkAccountsRequest *)request handler:(void(^)(AuthorizeLinkAccountsResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAuthorizeLinkAccountsWithRequest:(AuthorizeLinkAccountsRequest *)request handler:(void(^)(AuthorizeLinkAccountsResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface AccountLinkingService : GRPCProtoService<AccountLinkingService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
