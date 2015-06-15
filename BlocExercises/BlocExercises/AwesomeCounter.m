//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSInteger smallNumber, largeNumber;
    NSString *listOfNumbers = @"";
    
    if (number < otherNumber) {
        smallNumber = number;
        largeNumber = otherNumber;
    } else {
        smallNumber = otherNumber;
        largeNumber = number;
    }
    
    for (NSInteger n = smallNumber; n <= largeNumber; n++) {
        listOfNumbers = [listOfNumbers stringByAppendingString:[@(n) stringValue]];
    }
    return listOfNumbers;
}

@end
