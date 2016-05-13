//
//  TipTextField.m
//  TipCalculator
//
//  Created by Zach Smoroden on 2016-05-13.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "TipTextField.h"



@implementation TipTextField


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    CGFloat lineWidth = 2.0;
    
    //path.moveToPoint(CGPoint(x: 0, y: rect.height - lineWidth))
    [path moveToPoint:(CGPoint){0, rect.size.height - lineWidth}];
    
    //path.addLineToPoint(CGPoint(x: rect.width, y: rect.height - lineWidth))
    [path addLineToPoint:(CGPoint){rect.size.width, rect.size.height - lineWidth}];
    
    [[UIColor colorWithRed:0.309 green:0.521 blue:0.6 alpha:1] setStroke];
    
    [path stroke];
}


@end
