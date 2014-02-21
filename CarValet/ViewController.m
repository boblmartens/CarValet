//
//  ViewController.m
//  CarValet
//
//  Created by Bob Martens on 2/14/14.
//  Copyright (c) 2014 Bob Martens. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    Car *myCar = [[Car alloc] init];
    [myCar printCarInfo];
    
    myCar.make = @"Ford";
    myCar.model = @"Escape";
    myCar.year = 2014;
    myCar.fuelAmount = 10.0f;
    
    [myCar printCarInfo];
    
    Car *otherCar = [[Car alloc] initWithMake:@"Honda"
                                        model:@"Accord"
                                         year:2010
                                   fuelAmount:12.5f];
    
    [otherCar printCarInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
