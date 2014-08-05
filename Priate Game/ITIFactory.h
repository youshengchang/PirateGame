//
//  ITIFactory.h
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITITile.h"
#import "ITIWeapon.h"
#import "ITIArmer.h"
#import "ITIBoss.h"
#import "ITICharactor.h"


@interface ITIFactory : NSObject
@property (strong, nonatomic) NSArray *tiles;

-(ITITile *) getTileAtX: (NSUInteger)xPosition andAtY: (NSUInteger)yPosition;
-(ITIFactory *)init;
-(NSArray *)tiles;
-(ITIBoss *)boss;
-(ITICharactor *)charactor;


@end
