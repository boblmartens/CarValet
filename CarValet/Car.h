//
//  Car.h
//  CarValet
//
//  Created by Bob Martens on 2/14/14.
//  Copyright (c) 2014 Bob Martens. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property int year;
@property NSString *make;
@property NSString *model;
@property float fuelAmount;

- (id)initWithMake:(NSString *)make
             model:(NSString *)model
              year:(int)year
        fuelAmount:(float)fuelAmount;

- (void)printCarInfo;

@end
