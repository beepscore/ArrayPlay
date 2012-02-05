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
    
    ArrayModel *testArrayModel = [[ArrayModel alloc] init];
    
    NSNumber *testNumber = [NSNumber numberWithInt:2];
    testArrayModel.myArray = [NSArray arrayWithObject:testNumber];
    
    // change testNumber, expect it doesn't array element
    testNumber = [NSNumber numberWithInt:3];
    NSNumber *expectedNumber = [NSNumber numberWithInt:2];
    NSNumber *actualNumber = [testArrayModel.myArray objectAtIndex:0];
    
    STAssertEqualObjects(expectedNumber, actualNumber, nil);
}

@end
