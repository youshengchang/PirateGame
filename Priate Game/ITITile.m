//
//  ITITile.m
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITITile.h"

@implementation ITITile
-(ITITile *) initTileWithStory: (NSString *)story andImage:(UIImage *)image andArmer:(ITIArmer *)armer andWeapon:(ITIWeapon *)weapon andEffectHealth:(int)health bossIsHere:(ITIBoss *)boss{
    
    self = [super init];
    if(self){
        self.tileStory = story;
        self.tileImage = image;
        self.tileArmer = armer;
        self.tileWeapon = weapon;
        self.boss = boss;
    }
    NSLog(@"input story is: %@", story);
    NSLog(@"tile's story is %@", self.tileStory);
    NSLog(@"tile's image is %@", self.tileImage);
    NSLog(@"tile's description: %@", self);
    return self;
    
}
@end
