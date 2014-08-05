//
//  ITIViewController.m
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITIViewController.h"
#import "ITIFactory.h"
#import "ITITile.h"





@interface ITIViewController ()

@end

@implementation ITIViewController

ITIFactory *myFactory;
CGPoint cgPoint;
ITITile * tile;




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myFactory = [[ITIFactory alloc] init];
    cgPoint.x = 0;
    cgPoint.y = 0;
    self.leftButton.hidden = TRUE;
    self.downButton.hidden = TRUE;
    self.charactor = myFactory.charactor;
    self.boss = myFactory.boss;
    NSUInteger xNum = [[NSNumber numberWithFloat:cgPoint.x] unsignedIntegerValue];
    NSUInteger yNum = [[NSNumber numberWithFloat:cgPoint.y] unsignedIntegerValue];
    tile = [myFactory getTileAtX:xNum andAtY:yNum];
    self.storyLabel.text = tile.tileStory;
    self.tileImageView.image = tile.tileImage;
    
    
    self.charactorStatusLabel.text = [NSString stringWithFormat:@"Health: %d\nDemage: %d\n",self.charactor.health,self.charactor.demage];
    [self.actionButton setEnabled:YES];
    NSLog(@"Tile Array is %@", myFactory.tiles);
    NSLog(@"Boss's health is %d", self.boss.health);
    NSLog(@"Charactor's health is %d", self.charactor.health);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateTile:(CGPoint)cgPoint
{
    NSUInteger xNum = [[NSNumber numberWithFloat:cgPoint.x] unsignedIntegerValue];
    NSUInteger yNum = [[NSNumber numberWithFloat:cgPoint.y] unsignedIntegerValue];
    tile = [myFactory getTileAtX:xNum andAtY:yNum];
    
}

-(void)updateStatusLabel
{
    self.storyLabel.text = tile.tileStory;
    self.tileImageView.image = tile.tileImage;
}

-(void)updateActionButton
{
    if(tile.tileArmer != nil){
        self.actionLabel.text = [NSString stringWithFormat:@"Pick up %@", tile.tileArmer.name];
        
    }else if(tile.tileWeapon != nil){
        self.actionLabel.text = [NSString stringWithFormat:@"Pick up %@", tile.tileWeapon.name];
    }else if(tile.boss != nil){
        self.actionLabel.text = [NSString stringWithFormat:@"Fight!!!"];
    }else{
        self.actionLabel.text = @"";
    }
    [self.actionButton setEnabled:YES];

}
- (IBAction)upButtonPressed:(UIButton *)sender {
    cgPoint.y++;
    if(cgPoint.y > 0){
        self.downButton.hidden = FALSE;
    }
    if(cgPoint.y == 2){
        self.upButton.hidden = TRUE;
    }else {
        
        self.upButton.hidden = FALSE;

    }

    [self updateTile:cgPoint];
    [self updateStatusLabel];
    [self updateActionButton];

}

- (IBAction)downButtonPressed:(UIButton *)sender {
    cgPoint.y--;
    if(cgPoint.y < 2){
        self.upButton.hidden = FALSE;
    }
    if(cgPoint.y == 0){
        self.downButton.hidden = TRUE;
    }else{
        
        self.downButton.hidden = FALSE;
    }
    [self updateTile:cgPoint];
    [self updateStatusLabel];
    [self updateActionButton];
 
    
}

- (IBAction)leftButtonPressed:(UIButton *)sender {
    cgPoint.x--;
    if(cgPoint.x < 3){
        self.rightButton.hidden = FALSE;
    }
    if(cgPoint.x == 0){
        self.leftButton.hidden = TRUE;
    }else{
        self.leftButton.hidden = FALSE;
    }
    [self updateTile:cgPoint];
    [self updateStatusLabel];
    [self updateActionButton];
}

- (IBAction)rightButtonPressed:(UIButton *)sender {
    cgPoint.x++;
    if(cgPoint.x > 0){
        self.leftButton.hidden = FALSE;
    }
    if(cgPoint.x == 3){
        self.rightButton.hidden = TRUE;
    }else if(tile.boss != nil){
        self.actionLabel.text = [NSString stringWithFormat:@"Fight!!!"];
    }else{
        
        self.rightButton.hidden = FALSE;
    }
    [self updateTile:cgPoint];
    [self updateStatusLabel];
    [self updateActionButton];

}

- (IBAction)reset:(UIButton *)sender {
    cgPoint.x = 0;
    cgPoint.y = 0;
    self.leftButton.hidden = TRUE;
    self.downButton.hidden = TRUE;
    self.rightButton.hidden = FALSE;
    self.upButton.hidden = FALSE;
    
    myFactory = [myFactory init];
    [self updateTile:cgPoint];
    [self updateStatusLabel];
    [self updateActionButton];
    self.boss = myFactory.boss;
    self.charactor = myFactory.charactor;
    
    self.charactorStatusLabel.text = [NSString stringWithFormat:@"Health: %d\nDemage: %d\n",self.charactor.health,self.charactor.demage];
   
    
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
    if(tile.tileWeapon != nil){
        self.charactor.weapon = nil;
        self.charactor.weapon = tile.tileWeapon;
        self.charactor.demage = tile.tileWeapon.demage;
        [self.actionButton setEnabled:NO];
       
        
    }
    if(tile.tileArmer != nil){
        self.charactor.armer = nil;
        self.charactor.armer = tile.tileArmer;
        self.charactor.health += tile.tileArmer.health;
        [self.actionButton setEnabled:NO];
    }
    if(tile.boss !=nil){
        NSLog(@"Fight");
        NSLog(@"character's health is %d, boss's demage is %d", self.charactor.health, self.boss.demage);
        self.charactor.health -= 3;
        self.charactor.demage += 2;
        if(self.charactor.health < 0){
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death" message:@"You have died restart the game!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alertView show];
        }
    }
    self.charactorStatusLabel.text = [NSString stringWithFormat:@"Health: %d\nDemage: %d\n",self.charactor.health,self.charactor.demage];
   
    
}
@end
