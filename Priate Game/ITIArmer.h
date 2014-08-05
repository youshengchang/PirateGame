//
//  ITIArmer.h
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITIArmer : NSObject
@property NSString *name;
@property int health;

+(ITIArmer *)initWithName: (NSString *)name health:(int) health;

@end
