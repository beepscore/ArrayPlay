//
//  ViewController.h
//  ArrayPlay
//
//  Created by Steve Baker on 2/4/12.
//  Copyright (c) 2012 Beepscore LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArrayModel.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) ArrayModel *arrayModel;

- (void)iterateOverModelArray;
- (void)fastEnumerateOverModelArray;

@end
