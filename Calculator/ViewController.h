//
//  ViewController.h
//  Calculator
//
//  Created by Developer on 10/25/13.
//  Copyright (c) 2013 Adam Zaninovich. All rights reserved.
//

#import <UIKit/UIKit.h>

int method;
int selectNumber;
float runningTotal;

@interface ViewController : UIViewController {
  IBOutlet UILabel *screen;
}

- (IBAction)n1:(id)sender;
- (IBAction)n2:(id)sender;
- (IBAction)n3:(id)sender;
- (IBAction)n4:(id)sender;
- (IBAction)n5:(id)sender;
- (IBAction)n6:(id)sender;
- (IBAction)n7:(id)sender;
- (IBAction)n8:(id)sender;
- (IBAction)n9:(id)sender;
- (IBAction)n0:(id)sender;

- (IBAction)divide:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)clear:(id)sender;

@end
