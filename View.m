//
//  View.m
//  Graphics
//
//  Created by Mubashir Meddekar on 23/12/14.
//  Copyright (c) 2014 Mubashir Meddekar. All rights reserved.
//

#import "View.h"

@implementation View

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    //Fonts in iOS
    for(UIFont *font in [UIFont familyNames]){
        NSLog(@"%@",font);
    }
    
    NSString *str = @"Hello Today";
    UIFont *font = [UIFont fontWithName:@"Palatino" size:32];
    [str drawAtPoint:CGPointMake(20, 50) withAttributes:@{NSFontAttributeName:font}];
    
    UIImage *image = [UIImage imageNamed:@"Destiny.jpg"];
    [image drawAtPoint:CGPointMake(20, 100)];
    
    [[UIColor greenColor]set];
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 4.0);
    CGContextMoveToPoint(context, 20, 400);
    CGContextAddLineToPoint(context, 100, 500);
    CGContextStrokePath(context);
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGRect drawRectangle = CGRectMake(20, 550, 100, 50);
    
    CGAffineTransform translate = CGAffineTransformMakeTranslation(100.0f, 0.0f);
    
    CGPathAddRect(path, &translate, drawRectangle);
    
    CGContextSaveGState(context);
    
    CGContextAddPath(context, path);
    
    [[UIColor colorWithRed:0.4 green:0.9 blue:0.2 alpha:1.0]setFill];
    
    [[UIColor redColor]setStroke];
    
    CGContextSetLineWidth(context, 4.0);
    CGContextDrawPath(context, kCGPathFillStroke);
    
    
}

@end
