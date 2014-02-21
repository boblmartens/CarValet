//
//  Car.m
//  CarValet
//
//  Created by Bob Martens on 2/14/14.
//  Copyright (c) 2014 Bob Martens. All rights reserved.
//

#import "Car.h"

@implementation Car

- (id)init
{
    return [self initWithMake:nil model:nil year:1900 fuelAmount:0.0f];
}

- (id)initWithMake:(NSString *)make model:(NSString *)model year:(int)year fuelAmount:(float)fuelAmount
{
    self = [super init];
    
    if (self != nil) {
        _make = [make copy];
        _model = [model copy];
        _year = year;
        _fuelAmount = fuelAmount;
    }
    
    return self;
}

- (void)printCarInfo
{
    if (self.make && self.model) {
        NSLog(@"Car Make: %@", self.make);
        NSLog(@"Car Model: %@", self.model);
        NSLog(@"Number of Gallons in Tank: %0.2f", self.fuelAmount);
    } else {
        NSLog(@"Car undefined: no make or model specified.");
    }
}

@end
