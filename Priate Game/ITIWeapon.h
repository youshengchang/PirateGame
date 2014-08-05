//
//  ITIWeapon.h
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITIWeapon : NSObject
@property NSString  *name;
@property int demage;

+(ITIWeapon *) initWithName:(NSString *) name damage:(int) damage;

@end
