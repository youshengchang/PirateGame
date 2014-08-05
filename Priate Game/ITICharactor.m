//
//  ITICharactor.m
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITICharactor.h"

@implementation ITICharactor
-(ITICharactor *)initWithHealth: (int) health{
    
    if([super init]){
        self.health = health;
        self.weapon = nil;
        self.armer = nil;
        self.demage = 0;
        
    }
    return self;
}
@end
