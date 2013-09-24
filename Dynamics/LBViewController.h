//
//  LBViewController.h
//  Dynamics
//
//  Created by Luka Bratoš on 9/24/13.
//  Copyright (c) 2013 Luka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LBViewController : UIViewController

@property (nonatomic, strong) UIDynamicAnimator* animator;
@property (nonatomic, strong) UIGravityBehavior* gravity;

@end
