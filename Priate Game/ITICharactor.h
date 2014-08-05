//
//  ITICharactor.h
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITIArmer.h"
#import "ITIWeapon.h"

@interface ITICharactor : NSObject
@property int health;
@property int demage;
@property ITIWeapon *weapon;
@property ITIArmer *armer;

-(ITICharactor *)initWithHealth: (int) health;

@end
