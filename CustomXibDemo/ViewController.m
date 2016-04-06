//
//  ViewController.m
//  CustomXibDemo
//
//  Created by Nipuna H Herath on 4/6/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

#import "ViewController.h"
#import "SliderView.h"

@interface ViewController ()

@end
SliderView *sliderView ;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    sliderView = [[SliderView alloc] init];
    sliderView.view.backgroundColor = [UIColor blueColor];
    
    sliderView.center = CGPointMake(100, 300);
    [self.view addSubview:sliderView];
    
    // Turn off autosizing masks
    sliderView.translatesAutoresizingMaskIntoConstraints = NO;
    
    // 1. Pin to bottom
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:sliderView
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    // 2. Pin to center x
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:sliderView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0 constant:0.0]];
    
}
- (IBAction)btnPressed:(id)sender {
    [sliderView.label setText:@"LOL"];
    
}

@end
