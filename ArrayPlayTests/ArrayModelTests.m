//
//  ArrayModelTests.m
//  ArrayPlay
//
//  Created by Steve Baker on 2/4/12.
//  Copyright (c) 2012 Beepscore LLC. All rights reserved.
//

#import "ArrayModelTests.h"
#import "ArrayModel.h"

@implementation ArrayModelTests

- (void)setUp {
    [super setUp];
    
    // Set-up code here.
}


- (void)tearDown {
    // Tear-down code here.
    
    [super tearDown];
}


-(void)testAddObjectToArrayThenChangeObject {
    // http://stackoverflow.com/questions/5686767/changing-array-elements-after-shallow-copying-the-array
    
    ArrayModel *testArrayModel = [[ArrayModel alloc] init];
    
    NSNumber *testNumber = [NSNumber numberWithInt:65];
    // numbers 0-12 are singletons??
    // http://stackoverflow.com/questions/4270121/why-nsnumber-points-to-the-same-address-when-value-are-equals
    NSLog(@"&testNumber = %llu", &testNumber);
    testArrayModel.myArray = [NSArray arrayWithObject:testNumber];
    
    // change testNumber to point to a new object at a different address
    testNumber = [NSNumber numberWithInt:66];
    NSLog(@"&testNumber = %llu", &testNumber);
    // [testArrayModel.myArray objectAtIndex:0] still points to the original NSNumber
    NSNumber *expectedNumber = [NSNumber numberWithInt:65];
    NSNumber *actualNumber = [testArrayModel.myArray objectAtIndex:0];

    // uses isEqualTo: to test objects
    STAssertEqualObjects(expectedNumber, actualNumber, nil);
}

@end
