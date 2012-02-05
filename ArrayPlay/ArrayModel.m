//
//  ArrayModel.m
//  ArrayPlay
//
//  Created by Steve Baker on 2/4/12.
//  Copyright (c) 2012 Beepscore LLC. All rights reserved.
//

#import "ArrayModel.h"

@implementation ArrayModel

@synthesize myArray;

- (id)init {
    self = [super init];
    if (self) {
        
        // by default, property is initialized to nil
        // initialize self.myArray to an empty array
        // using ARC, don't autorelease
        self.myArray = [[NSMutableArray alloc] init];      
    }
    return self;
}


- (void)dealloc {
    self.myArray = nil;
    // using ARC don't call super dealloc
    // [super dealloc];
}

- (void)configureArrayToSample {
    self.myArray = nil;
    [self.myArray addObject:[NSNumber numberWithInt:5]]; 
    
    NSString *someString = @"this is my string";
    [self.myArray addObject:someString];
    [self.myArray addObject:@"another string"];
    
    NSNumber *anotherNumber = [[NSNumber alloc] initWithFloat:2.718];
    [self.myArray addObject:anotherNumber];    
}

@end
