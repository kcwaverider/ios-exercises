//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    NSNumber *newNumber = [NSNumber numberWithFloat:([number floatValue] *2)];
    
    return newNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger low, high;
    
    if (number < otherNumber) {
        low = number;
        high = otherNumber;
    } else {
        low = otherNumber;
        high = number;
    }
    
    NSMutableArray *mutableArray = [NSMutableArray new];
    
    for (NSInteger n = 0; n <= high - low; n++) {
        mutableArray[n] = [NSNumber numberWithInteger:(low + n)];
    }
    
    NSArray *finalArray = [mutableArray copy];
    
    return finalArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSInteger lowest = [arrayOfNumbers[0] integerValue];
    NSInteger tempNum;
    
    for (NSNumber *number in arrayOfNumbers) {
        
        tempNum = [number integerValue];
        if ( tempNum < lowest) {
            lowest = tempNum;
        }
    }
    
    return lowest;
}

@end
