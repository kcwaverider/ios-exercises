//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *fullSentance = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return fullSentance;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *shortName = nil;
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        shortName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        shortName = cheeseName;
    }

    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */

    return shortName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSString *cheeseString = nil;
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        cheeseString = @"1 cheese";
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *cheesyEnding = @" cheeses";
        NSString *cheeseNumberString = [@(cheeseCount) stringValue];
        cheeseString = [cheeseNumberString stringByAppendingString:cheesyEnding];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return cheeseString;
}

@end
