//
//  Person.h
//  Ry Objective-C Tutorial
//
//  Created by Matthew Allen Lin on 12/13/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

@interface Person : NSObject

@property (nonatomic) NSString *name;

@property (nonatomic, weak) Car *car;

@end
