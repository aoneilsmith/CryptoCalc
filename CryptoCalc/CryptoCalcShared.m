//
//  CryptoCalc.m
//  CryptoCalc
//
//  Created by Andrew O'Neil-Smith on 2/17/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import "CryptoCalcShared.h"

@implementation CryptoCalcShared

//static pointer
static CryptoCalcShared *sharedDataCache;

//getset
@synthesize sharedInt;
@synthesize sharedBit;
@synthesize sharedLit;
@synthesize sharedDog;

+(CryptoCalcShared *)getSharedData
{
    if(!sharedDataCache)
    {
        sharedDataCache = [[super alloc] init];
        [sharedDataCache initialize];

    }
    return sharedDataCache;
}

//setup initial state
-(void)initialize
{
    if(!sharedDataCache)
        return;
    
    //int
    [sharedDataCache setSharedInt:1.00];
    [sharedDataCache setSharedBit:637.52];
    [sharedDataCache setSharedLit:15.87];
    [sharedDataCache setSharedDog:0.0013];

    
    /*/ array
    theSharedArray = [[NSMutableArray alloc] initWithObjects:@"Bitcoin", @"Litecoin", @"Dogecoin", nil];
    
    [sharedDataCache setTheSharedArray:theSharedArray];
     */
    
}

@end
