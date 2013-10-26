//
//  ViewController.m
//  Calculator
//
//  Created by Developer on 10/25/13.
//  Copyright (c) 2013 Adam Zaninovich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad { [super viewDidLoad]; }
- (void)didReceiveMemoryWarning { [super didReceiveMemoryWarning]; }

- (void)setScreenWithInt:(int)number {
  screen.text = [NSString stringWithFormat:@"%i", number];
}

- (void)setScreenWithFloat:(float)number {
  screen.text = [NSString stringWithFormat:@"%.2f", number];
}

- (void)pushNumber:(int)number {
  selectNumber = (selectNumber * 10) + number;
  [self setScreenWithInt:selectNumber];
}

- (void)compute {
  if (runningTotal == 0) {
    runningTotal = selectNumber;
  } else {
    switch (method) {
      case 1:
        runningTotal = runningTotal / selectNumber;
        break;
      case 2:
        runningTotal = runningTotal * selectNumber;
        break;
      case 3:
        runningTotal = runningTotal - selectNumber;
        break;
      case 4:
        runningTotal = runningTotal + selectNumber;
        break;
      default:
        break;
    }
  }
}

- (void)performOperation:(int)operation {
  [self compute];
  method = operation;
  selectNumber = 0;
  [self setScreenWithFloat:runningTotal];
}

- (IBAction)n0:(id)sender { [self pushNumber:0]; }
- (IBAction)n1:(id)sender { [self pushNumber:1]; }
- (IBAction)n2:(id)sender { [self pushNumber:2]; }
- (IBAction)n3:(id)sender { [self pushNumber:3]; }
- (IBAction)n4:(id)sender { [self pushNumber:4]; }
- (IBAction)n5:(id)sender { [self pushNumber:5]; }
- (IBAction)n6:(id)sender { [self pushNumber:6]; }
- (IBAction)n7:(id)sender { [self pushNumber:7]; }
- (IBAction)n8:(id)sender { [self pushNumber:8]; }
- (IBAction)n9:(id)sender { [self pushNumber:9]; }

- (IBAction)divide:(id)sender   { [self performOperation:1]; }
- (IBAction)multiply:(id)sender { [self performOperation:2]; }
- (IBAction)subtract:(id)sender { [self performOperation:3]; }
- (IBAction)add:(id)sender      { [self performOperation:4]; }
- (IBAction)equal:(id)sender    { [self performOperation:0]; }

- (IBAction)clear:(id)sender {
  method = 0;
  runningTotal = 0;
  selectNumber = 0;
  [self setScreenWithInt:0];
}

@end
