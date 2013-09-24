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
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"octocat.png"]];
    [square addSubview:imageView];
    [self.view addSubview:square];
    
    UIView* firstBarrier = [[UIView alloc] initWithFrame:CGRectMake(0, 170, 150, 20)];
    firstBarrier.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:firstBarrier];
    
    UIView* secondBarrier = [[UIView alloc] initWithFrame:CGRectMake(170, 350, 150, 20)];
    secondBarrier.backgroundColor = [UIColor blueColor];
    [self.view addSubview:secondBarrier];
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.gravity = [[UIGravityBehavior alloc] initWithItems:@[square]];
    [self.animator addBehavior:self.gravity];
    
    self.collision = [[UICollisionBehavior alloc] initWithItems:@[square]];
    self.collision.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:self.collision];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
