//
//  CarUtilities.m
//  Ry Objective-C Tutorial
//
//  Created by Matthew Allen Lin on 12/13/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

#import <Foundation/Foundation.h>
// CarUtilities.m
#import "CarUtilities.h"

// Private function declaration
static id getRandomItemFromArray(NSArray *anArray);

// Public function implementations
NSString *CUGetRandomMake(NSArray *makes) {
    return getRandomItemFromArray(makes);
}
NSString *CUGetRandomModel(NSArray *models) {
    return getRandomItemFromArray(models);
}
NSString *CUGetRandomMakeAndModel(NSDictionary *makesAndModels) {
    NSArray *makes = [makesAndModels allKeys];
    NSString *randomMake = CUGetRandomMake(makes);
    NSArray *models = makesAndModels[randomMake];
    NSString *randomModel = CUGetRandomModel(models);
    return [randomMake stringByAppendingFormat:@" %@", randomModel];
}

// Private function implementation
static id getRandomItemFromArray(NSArray *anArray) {
    int maximum = (int)[anArray count];
    int randomIndex = arc4random_uniform(maximum);
    return anArray[randomIndex];
}