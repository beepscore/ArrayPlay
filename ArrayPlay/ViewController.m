//
//  ViewController.m
//  ArrayPlay
//
//  Created by Steve Baker on 2/4/12.
//  Copyright (c) 2012 Beepscore LLC. All rights reserved.
//

#import "ViewController.h"
#import "ArrayModel.h"

@implementation ViewController

@synthesize arrayModel;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // using ARC, don't autorelease
    self.arrayModel = [[ArrayModel alloc] init];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

#pragma -
- (void)dealloc {
    self.arrayModel = nil;
    // using ARC don't call super dealloc
    // [super dealloc];
}


- (void)iterateOverModelArray {
    
    // loop with index
    for (int i = 0; i < [self.arrayModel.myArray count]; i++) {
        //Note self.arrayModel[i] doesn't work.  Use [myArray objectAtIndex:i]
        NSLog(@"self.arrayModel[%d] description == %@", 
              i, 
              [self.arrayModel.myArray objectAtIndex:i]);
    }
}


- (void)fastEnumerateOverModelArray {

    // loop with fast enumeration.
    // Ref Hillegass, Cocoa programming for Mac OS X, 3rd ed. Ch03 pg 50
    for (id element in self.arrayModel.myArray) {
        NSLog(@"%@", [[NSString alloc] 
                      initWithFormat:@"description = %@", element]);
    }
}

@end
