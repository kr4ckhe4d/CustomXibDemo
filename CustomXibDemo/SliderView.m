//
//  SliderView.m
//  CustomXibDemo
//
//  Created by Nipuna H Herath on 4/6/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

#import "SliderView.h"


@interface SliderView(){
    CGSize _intrinsicContentSize;
}
@end
@implementation SliderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        // Initialization Code
        
        // 1. Load .xib
        [[NSBundle mainBundle] loadNibNamed:@"SliderView" owner:self options:nil];
        
        // 2. Adjust bounds
        //NSLog(@"%@",NSStringFromCGRect(self.view.bounds));
        self.bounds = self.view.bounds;
        _intrinsicContentSize = self.bounds.size;
        // 3. Add as a subview
        [self addSubview:self.view];
    }
    return self;
}


-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        
        // 1. Load the interface file from the .xib
        [[NSBundle mainBundle] loadNibNamed:@"SliderView" owner:self options:nil];
        
        // 2. Add as a subview
        [self addSubview:self.view];
        
        // 3.
        _intrinsicContentSize = self.bounds.size;
    }
    return self;
}

- (IBAction)switchPressed:(UISwitch *)sender {
}

-(CGSize)intrinsicContentSize{
    return _intrinsicContentSize;
}
@end
