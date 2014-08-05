//
//  ITITile.h
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITIWeapon.h"
#import "ITIArmer.h"
#import "ITIBoss.h"

@interface ITITile : NSObject
@property NSString *tileStory;
@property UIImage   *tileImage;
@property ITIArmer *tileArmer;
@property ITIWeapon *tileWeapon;
@property int effectiveHealth;
@property ITIBoss *boss;

-(ITITile *) initTileWithStory: (NSString *)story andImage:(UIImage *)image andArmer:(ITIArmer *)armer andWeapon:(ITIWeapon *)weapon andEffectHealth:(int)health bossIsHere:(ITIBoss *)boss;
@end
