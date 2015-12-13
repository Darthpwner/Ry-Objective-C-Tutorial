//
//  Car.h
//  Ry Objective-C Tutorial
//
//  Created by Matthew Allen Lin on 12/13/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject {
    //Protected instance variables (not recommended)
}

@property (copy) NSString *model;

- (void) drive;

@end
