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
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    CGRect octocatFrame = CGRectMake(110, 50, 100, 100);
    UIView *octocat = [[UIView alloc] initWithFrame:octocatFrame];
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"octocat.png"]];
    [octocat addSubview:imageView];
    [self.view addSubview:octocat];
    
    UIView* firstBarrier = [[UIView alloc] initWithFrame:CGRectMake(0, 170, 150, 20)];
    firstBarrier.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:firstBarrier];
    
    UIView* secondBarrier = [[UIView alloc] initWithFrame:CGRectMake(170, 350, 150, 20)];
    secondBarrier.backgroundColor = [UIColor blueColor];
    [self.view addSubview:secondBarrier];
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.gravity = [[UIGravityBehavior alloc] initWithItems:@[octocat]];
    [self.animator addBehavior:self.gravity];
    
    self.itemBehaviour = [[UIDynamicItemBehavior alloc] initWithItems:@[octocat]];
    self.itemBehaviour.elasticity = 0.8;
    [self.animator addBehavior:self.itemBehaviour];
    
    self.collision = [[UICollisionBehavior alloc] initWithItems:@[octocat, firstBarrier, secondBarrier]];
    self.collision.translatesReferenceBoundsIntoBoundary = YES;
    [self.animator addBehavior:self.collision];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
