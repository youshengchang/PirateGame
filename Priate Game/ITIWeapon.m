//
//  ITIWeapon.m
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITIWeapon.h"

@implementation ITIWeapon


+(ITIWeapon *) initWithName:(NSString *) name damage:(int) damage{
    
    ITIWeapon *weapon = [[ITIWeapon alloc] init];
    
    if(weapon){
        weapon.name = name;
        weapon.demage = damage;
    }
    return weapon;
}
@end
