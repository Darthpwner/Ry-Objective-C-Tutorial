//
//  CarUtilities.h
//  Ry Objective-C Tutorial
//
//  Created by Matthew Allen Lin on 12/13/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

#ifndef CarUtilities_h
#define CarUtilities_h

// CarUtilities.h
#import <Foundation/Foundation.h>

NSString *CUGetRandomMake(NSArray *makes);
NSString *CUGetRandomModel(NSArray *models);
NSString *CUGetRandomMakeAndModel(NSDictionary *makesAndModels);


#endif /* CarUtilities_h */
