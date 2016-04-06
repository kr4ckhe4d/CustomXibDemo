//
//  SliderView.h
//  CustomXibDemo
//
//  Created by Nipuna H Herath on 4/6/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderView : UIView
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)switchPressed:(UISwitch *)sender;

@end
