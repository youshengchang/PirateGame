//
//  ITIViewController.h
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITICharactor.h"
#import "ITIBoss.h"


@interface ITIViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *tileImageView;
@property (weak, nonatomic) IBOutlet UIView *charctorStatusView;
@property (weak, nonatomic) IBOutlet UILabel *charactorStatusLabel;

@property (weak, nonatomic) IBOutlet UIView *actionCommandView;
@property (weak, nonatomic) IBOutlet UIView *tileStoryView;
@property (weak, nonatomic) IBOutlet UIView *commandView;

@property (weak, nonatomic) IBOutlet UIButton *upButton;

@property (weak, nonatomic) IBOutlet UIButton *downButton;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (weak, nonatomic) IBOutlet UILabel *storyLabel;
@property ITICharactor *charactor;
@property ITIBoss *boss;

@property (weak, nonatomic) IBOutlet UILabel *actionLabel;


- (IBAction)upButtonPressed:(UIButton *)sender;
- (IBAction)downButtonPressed:(UIButton *)sender;
- (IBAction)leftButtonPressed:(UIButton *)sender;
- (IBAction)rightButtonPressed:(UIButton *)sender;
- (IBAction)reset:(UIButton *)sender;
- (IBAction)actionButtonPressed:(UIButton *)sender;

@end
