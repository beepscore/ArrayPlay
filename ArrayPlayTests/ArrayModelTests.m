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
    
    NSNumber *testNumber = [NSNumber numberWithInteger:65];
    // aside: NSNumbers 0-12 are singletons??
    // http://stackoverflow.com/questions/4270121/why-nsnumber-points-to-the-same-address-when-value-are-equals
    
    NSLog(@"testNumber value : %i", [testNumber integerValue]);
    // compiler warns "Conversion specifies type 'unsigned long long' but the argument has type 'NSNumber'"
    NSLog(@"testNumber address : %llu", testNumber);
    // this doesn't print value correctly. Prints value : 0 or 256?
    NSLog(@"testNumber address : %llu , value : %i", testNumber, [testNumber integerValue]);
    // This log shows the value is still 65
    NSLog(@"testNumber value : %i", [testNumber integerValue]);
    STAssertEquals(65, [testNumber integerValue], nil);
    
    // [testArrayModel.myArray objectAtIndex:0] to value of pointer variable testNumber
    [testArrayModel.myArray addObject:testNumber];
    
    // assign testNumber to point to another object at a different address
    testNumber = [NSNumber numberWithInteger:66];
    NSLog(@"testNumber value : %i", [testNumber integerValue]);
    // compiler warns "Conversion specifies type 'unsigned long long' but the argument has type 'NSNumber'"
    NSLog(@"testNumber address : %llu", testNumber);
    
    // [testArrayModel.myArray objectAtIndex:0] still points to the original NSNumber
    NSNumber *expectedNumber = [NSNumber numberWithInteger:65];
    NSNumber *actualNumber = [testArrayModel.myArray objectAtIndex:0];
    
    // uses isEqualTo: to test objects
    STAssertEqualObjects(expectedNumber, actualNumber, nil);
    
    [testArrayModel.myArray addObject:@"boo"];
    [testArrayModel.myArray replaceObjectAtIndex:1 withObject:@"far"] ;
    STAssertEqualObjects(@"far", [testArrayModel.myArray objectAtIndex:1], nil);
}


-(void)testInitSetsMyArrayEmpty {
    
    ArrayModel *testArrayModel = [[ArrayModel alloc] init];
    NSMutableArray *expectedArray = [NSMutableArray array];
    
    STAssertEqualObjects(expectedArray, testArrayModel.myArray, nil);    
}

@end
