//
//  CryptoCalc.h
//  CryptoCalc
//
//  Created by Andrew O'Neil-Smith on 2/17/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CryptoCalcShared : NSObject
{
    int sharedInt;
    int sharedBit;
    int sharedLit;
    int sharedDog;
    
}

// important
+(CryptoCalcShared *)getSharedData;

//initialize instance variables
-(void)initialize;

//get/set data
@property (nonatomic) int sharedInt;
@property (nonatomic) int sharedBit;
@property (nonatomic) int sharedLit;
@property (nonatomic) int sharedDog;

//@property (strong, nonatomic) NSMutableArray *sharedArray;

@end
