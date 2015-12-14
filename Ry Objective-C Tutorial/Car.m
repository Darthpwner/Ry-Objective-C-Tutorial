//
//  Car.m
//  Ry Objective-C Tutorial
//
//  Created by Matthew Allen Lin on 12/13/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

#import "Car.h"

//Definition of class method
static NSString *_defaultModel;

@implementation Car {
    //Private instance variables
    double _odometer;
}

@synthesize model = _model; //Optional for Xcode 4.4+

- (void)drive {
    NSLog(@"Driving a %@. Vroooom!", self.model);
}

- (void)turnLeft {
    NSLog(@"The %@ is turning left", _model);
}

- (void)turnRight {
    NSLog(@"The %@ is turning right", _model);
}

- (id)initWithModel:(NSString *)aModel {
    self = [super init];
    if (self) {
        // Any custom setup work goes here
        _model = [aModel copy];
        _odometer = 0;
    }
    return self;
}

- (id)init {
    // Forward to the "designated" initialization method
    return [self initWithModel:_defaultModel];
}

//Implementation of class method
+ (void)setDefaultModel:(NSString *)aModel {
    _defaultModel = [aModel copy];  //Creates a copy of the parameter instead of assigning it directly.
}

+ (void)initialize {
    if (self == [Car class]) {
        // Makes sure this isn't executed more than once
        _defaultModel = @"Nissan Versa";
    }
}

@end
