//
//  ArrayModel.h
//  ArrayPlay
//
//  Created by Steve Baker on 2/4/12.
//  Copyright (c) 2012 Beepscore LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayModel : NSObject

@property (nonatomic, strong) NSMutableArray *myArray;

- (void)configureArrayToSample;

@end
