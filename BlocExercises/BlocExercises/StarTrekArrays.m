//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *starTrekArray = [characterString componentsSeparatedByString:@";"];
    return starTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    for (int n = 0; n < characterArray.count; n++) {
        sortedArray[n] = characterArray[n];
    }
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector((localizedCaseInsensitiveCompare:))];
    [sortedArray sortUsingDescriptors:@[sortDescriptor]];
    

    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    BOOL worfExists = FALSE;
    
    for (NSString *name in characterArray) {
        if ( [name rangeOfString:@"worf" options:NSCaseInsensitiveSearch].location == NSNotFound )
            return FALSE;
    }
    return YES;
}

@end
