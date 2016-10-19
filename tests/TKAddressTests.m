
#import "TKJson.h"
#import "TKMember.h"
#import "TKTestBase.h"
#import "TokenIO.h"
#import "Address.pbobjc.h"
#import "Member.pbobjc.h"


@interface TKAddressTests : TKTestBase
@end

@implementation TKAddressTests {
    TKMember *member;
}

- (void)setUp {
    [super setUp];

    [self run: ^(TokenIO *tokenIO) {
        member = [self createMember:tokenIO];
    }];
}

- (void)testCreateAddress {
    [self run: ^(TokenIO *tokenIO) {
        NSString *name = @"address_name";
        Address *payload = [Address message];

        AddressRecord *address = [member addAddress:payload withName:name];

        XCTAssertEqualObjects(name, address.name);
        XCTAssertEqualObjects(payload, address.address);
    }];
}

- (void)testCreateAdnGetAddress {
    [self run: ^(TokenIO *tokenIO) {
        NSString *name = @"address_name";
        Address *payload = [Address message];

        AddressRecord *address = [member addAddress:payload withName:name];
        AddressRecord *result = [member getAddressWithId:address.id_p];

        XCTAssertEqualObjects(address, result);
    }];
}

- (void)testCreateAdnGetAddresses {
    [self run: ^(TokenIO *tokenIO) {
        NSString *name_1 = @"address_name_1";
        Address *data_1 = [Address message];
        NSString *name_2 = @"address_name_2";
        Address *data_2 = [Address message];

        AddressRecord *address_1 = [member addAddress:data_1 withName:name_1];
        AddressRecord *address_2 = [member addAddress:data_2 withName:name_2];

        NSArray<AddressRecord *> *result = [member getAddresses];

        XCTAssertEqualObjects(address_1, result[0]);
        XCTAssertEqualObjects(address_2, result[1]);
    }];
}

- (void)testGetAddresses_NotFound {
    [self run: ^(TokenIO *tokenIO) {
        NSArray<AddressRecord *> *result = [member getAddresses];

        XCTAssertEqual(result.count, 0);
    }];
}

- (void)testGetAddress_NotFound {
    [self run: ^(TokenIO *tokenIO) {
        XCTAssertThrows([member getAddressWithId:@"invalidAddressId"]);

    }];
}

- (void)testDeleteAddress {
    [self run: ^(TokenIO *tokenIO) {
        NSString *name = @"address_name";
        Address *payload = [Address message];

        AddressRecord *address = [member addAddress:payload withName:name];
        AddressRecord *result = [member getAddressWithId:address.id_p];

        XCTAssertEqualObjects(address, result);

        [member deleteAddressWithId:address.id_p];

        XCTAssertThrows(
                [member getAddressWithId:address.id_p]);

    }];
}

- (void)testDeleteAddress_NotFound {
    [self run: ^(TokenIO *tokenIO) {
        XCTAssertThrows(
                [member deleteAddressWithId:@"invalidAddressId"]);
    }];
}

@end
