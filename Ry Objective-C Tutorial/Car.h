//
//  Car.h
//  Ry Objective-C Tutorial
//
//  Created by Matthew Allen Lin on 12/13/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//Cannot place properties above interface

@interface Car : NSObject {
    //Protected instance variables (not recommended)
}


//@property (copy) NSString *model;
@property (nonatomic, strong) Person *driver;
@property (nonatomic, copy) NSString *model;

// Car.h

- (void) drive;

+ (void)setDefaultModel:(NSString *)aModel;

// Accessors
- (BOOL)isRunning;
- (void)setRunning:(BOOL)running;
- (NSString *)model;
- (void)setModel:(NSString *)model;

// Calculated values
- (double)maximumSpeed;
- (double)maximumSpeedUsingLocale:(NSLocale *)locale;

// Action methods
- (void)startEngine;
- (void)driveForDistance:(double)theDistance;
- (void)driveFromOrigin:(id)theOrigin toDestination:(id)theDestination;
- (void)turnByAngle:(double)theAngle;
- (void)turnToAngle:(double)theAngle;

// Error handling methods
- (BOOL)loadPassenger:(id)aPassenger error:(NSError **)error;

// Constructor methods
- (id)initWithModel:(NSString *)aModel;
- (id)initWithModel:(NSString *)aModel mileage:(double)theMileage;

// Comparison methods
- (BOOL)isEqualToCar:(Car *)anotherCar;
- (Car *)fasterCar:(Car *)anotherCar;
- (Car *)slowerCar:(Car *)anotherCar;

// Factory methods
+ (Car *)car;
+ (Car *)carWithModel:(NSString *)aModel;
+ (Car *)carWithModel:(NSString *)aModel mileage:(double)theMileage;

// Singleton methods
+ (Car *)sharedCar;

@end
