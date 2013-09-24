//
//  LBViewController.m
//  Dynamics
//
//  Created by Luka Bratoš on 9/24/13.
//  Copyright (c) 2013 Luka. All rights reserved.
//

#import "LBViewController.h"

@interface LBViewController ()

@end

@implementation LBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect squareFrame = CGRectMake(110, 50, 100, 100);
    UIView *square = [[UIView alloc] initWithFrame:squareFrame];
    square.backgroundColor = [UIColor greenColor];
    [self.view addSubview:square];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
