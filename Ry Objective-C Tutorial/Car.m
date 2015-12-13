//
//  Car.m
//  Ry Objective-C Tutorial
//
//  Created by Matthew Allen Lin on 12/13/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

#import "Car.h"

@implementation Car {
    //Private instance variables
    double _odometer;
}

@synthesize model = _model; //Optional for Xcode 4.4+

- (void)drive {
    NSLog(@"Driving a %@. Vroooom!", self.model);
}

@end
