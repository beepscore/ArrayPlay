//
//  ViewControllerTests.m
//  ArrayPlay
//
//  Created by Steve Baker on 2/4/12.
//  Copyright (c) 2012 Beepscore LLC. All rights reserved.
//

#import "ViewControllerTests.h"
#import "ViewController.h"
//#import "ArrayModel.h"

@implementation ViewControllerTests

// NOTE: After changing test method, Clean before running test to ensure using updated code.

-(void)testIterateOverModelArray {
    
    ViewController *viewController = [[ViewController alloc] initWithNibName:nil bundle:nil];
    STAssertNotNil(viewController, nil);

    STAssertNil(viewController.arrayModel, nil);

    [viewController viewDidLoad];
    // arrayModel should be empty array
    STAssertNotNil(viewController.arrayModel, nil);
    NSUInteger expectedCount = 0;
    STAssertEquals(expectedCount, 
                   viewController.arrayModel.myArray.count, 
                   @"arrayModel should be empty array");
    
    [viewController.arrayModel configureArrayToSample];
    [viewController iterateOverModelArray];  
    
}

@end
