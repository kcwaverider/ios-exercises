//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSString *favoriteDrink = [NSString alloc];
    if (characterDictionary[@"favorite drink"] != nil && [characterDictionary[@"favorite drink"] isKindOfClass:[NSString class]]) {
        favoriteDrink = characterDictionary[@"favorite drink"];
    } else {
        favoriteDrink = nil;
    }
    
    
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    NSMutableArray *drinkMenu = [[NSMutableArray alloc] init];
    NSString *favoriteDrink = [NSString alloc];
    
    for (int n = 0; n < charactersArray.count; n++) {
        if (charactersArray[n][@"favorite drink"] != nil && [charactersArray[n][@"favorite drink"] isKindOfClass:[NSString class]]) {
            favoriteDrink = charactersArray[n][@"favorite drink"];
        } else {
            favoriteDrink = nil;
        }
        
        drinkMenu[n] = favoriteDrink;

    }
    return drinkMenu;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *quotedDictionary = [characterDictionary mutableCopy];
    [quotedDictionary setObject:@"White men can't jump" forKey:@"quote" ];
    
    return quotedDictionary;
}

@end
