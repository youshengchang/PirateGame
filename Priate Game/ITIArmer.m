//
//  ITIArmer.m
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITIArmer.h"

@implementation ITIArmer
+(ITIArmer *)initWithName: (NSString *)name health:(int) health{
    
    ITIArmer *armer = [[ITIArmer alloc] init];
    if(armer){
        armer.name = name;
        armer.health = health;
    }
    return armer;
    
    
}
@end
