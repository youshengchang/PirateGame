//
//  ITIFactory.m
//  Priate Game
//
//  Created by yousheng chang on 7/28/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITIFactory.h"

@implementation ITIFactory

NSArray *column1Array = nil;
NSArray *column2Array = nil;
NSArray *column3Array = nil;
NSArray *column4Array = nil;
ITIBoss *boss = nil;
ITICharactor *charactor = nil;


-(ITIFactory *)init
{
    
    self = [super init];
    if(self){
        _tiles = [[NSArray alloc] init];
        [self initColumnArray1];
        [self initColumnArray2];
        [self initColumnArray3];
        [self initColumnArray4];
        NSLog(@"column1 is %@", column1Array.description);
        self.tiles = [[NSArray alloc]initWithObjects:column1Array,column2Array,column3Array,column4Array, nil];
        boss = [[ITIBoss alloc] init];
        boss.health = 100;
        boss.demage = 0;
        charactor = [[ITICharactor alloc] init];
        charactor.health = 10;
        charactor.demage = 0;
        
        NSLog(@"Init Array is done");
        
    }
    NSLog(@"Tiles: %@", self.tiles.description);
    return self;
}

-(void)initColumnArray1
{
    UIImage *image = [UIImage imageNamed:@"PirateStart.jpg"];
    ITIArmer *armer = [ITIArmer initWithName:@"Shielt Armer" health:5];
    ITIWeapon *weapon = [ITIWeapon initWithName:@"Arrow" damage:1];
    
    ITITile *tile1 = [[ITITile alloc] initTileWithStory:@"Title1 Story" andImage:image andArmer:armer andWeapon:weapon andEffectHealth:0 bossIsHere:nil];
    image = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    weapon = [ITIWeapon initWithName:@"Swords" damage:5];
                      
    ITITile *tile2 = [[ITITile alloc] initTileWithStory:@"Title2 Story" andImage:image andArmer:nil andWeapon:weapon andEffectHealth:0 bossIsHere:nil];
    
    image = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];

    ITITile *tile3 = [[ITITile alloc] initTileWithStory:@"Title3 Story" andImage:image andArmer:nil andWeapon:nil andEffectHealth:0 bossIsHere:nil];
    NSLog(@"tile1 is %@", tile1.description);
    column1Array = [[NSArray alloc] initWithObjects:tile1,tile2,tile3, nil];
    
    
}

-(void)initColumnArray2
{
    UIImage *image = [UIImage imageNamed:@"PirateBoss.jpeg"];
    ITIArmer *armer = [ITIArmer initWithName:@"Head Cap" health:2];
    ITIWeapon *weapon = [ITIWeapon initWithName:@"Nife" damage:2];
    ITIBoss *boss = [[ITIBoss alloc]init];
    boss.health = 1000;
    boss.demage = 0;

    
    ITITile *tile4 = [[ITITile alloc] initTileWithStory:@"Title4 Story: Boss is Here" andImage:image andArmer:nil andWeapon:nil andEffectHealth: 0 bossIsHere:boss];
    
    image = [UIImage imageNamed:@"PirateParrot.jpg"];

    ITITile *tile5 = [[ITITile alloc] initTileWithStory:@"Title5 Story" andImage:image andArmer:nil andWeapon:weapon andEffectHealth:0 bossIsHere:nil];
    
    image = [UIImage imageNamed:@"PiratePlank.jpg"];

    
    ITITile *tile6 = [[ITITile alloc] initTileWithStory:@"Title6 Story" andImage:image andArmer:armer andWeapon:nil andEffectHealth:0 bossIsHere:nil];
    
    column2Array = [[NSArray alloc] initWithObjects:tile4,tile5,tile6, nil];
    
    
}
-(void)initColumnArray3
{
    UIImage *image = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    ITIArmer *armer = [ITIArmer initWithName:@"Leg Shields" health:2];
    ITIWeapon *weapon = [ITIWeapon initWithName:@"New Gun" damage:3];
    
    ITITile *tile7 = [[ITITile alloc] initTileWithStory:@"Title7 Story" andImage:image andArmer:nil andWeapon:weapon andEffectHealth:0 bossIsHere:nil];
    
    image = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    ITITile *tile8 = [[ITITile alloc] initTileWithStory:@"Title8 Story" andImage:image andArmer:nil andWeapon:nil andEffectHealth:0 bossIsHere:nil];
    
    image = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    
    ITITile *tile9 = [[ITITile alloc] initTileWithStory:@"Title9 Story" andImage:image andArmer:armer andWeapon:nil andEffectHealth:0 bossIsHere:nil];
    
    column3Array = [[NSArray alloc] initWithObjects:tile7,tile8,tile9, nil];
    
    
}
-(void)initColumnArray4
{
    UIImage *image = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    ITIArmer *armer = [ITIArmer initWithName:@"Arm Shields" health:2];
    ITIWeapon *weapon = [ITIWeapon initWithName:@"Fire Bollet" damage:1];
    
    ITITile *tile10 = [[ITITile alloc] initTileWithStory:@"Title10 Story" andImage:image andArmer:armer andWeapon:nil andEffectHealth:0 bossIsHere:nil];
    
    image = [UIImage imageNamed:@"PirateAttack.jpg"];
    ITITile *tile11 = [[ITITile alloc] initTileWithStory:@"Title11 Story" andImage:image andArmer:nil andWeapon:weapon andEffectHealth:0 bossIsHere:nil];
    
    image = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    
    ITITile *tile12 = [[ITITile alloc] initTileWithStory:@"Title12 Story" andImage:image andArmer:nil andWeapon:nil andEffectHealth:0 bossIsHere:nil];
    
    column4Array = [[NSArray alloc] initWithObjects:tile10,tile11,tile12, nil];
    
    
}

-(NSArray *)tiles
{
    return _tiles;
}
-(ITITile *) getTileAtX: (NSUInteger)xPosition andAtY: (NSUInteger)yPosition{
    ITITile *tileAtPosition = nil;
    NSArray *column = [_tiles objectAtIndex: xPosition];
    
    tileAtPosition = [column objectAtIndex: yPosition];
    return tileAtPosition;
}

-(ITIBoss *)boss{
    return boss;
    
}
-(ITICharactor *)charactor{
    return charactor;
}

@end
