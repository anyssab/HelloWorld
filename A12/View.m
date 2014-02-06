//
//  View.m
//  A12
//
//  Created by Anyssa Buchanan on 1/30/14.
//  Copyright (c) 2014 Anyssa Buchanan. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{ // code is in b/w thse 2 brackets
    // Drawing code
//    NSString *str = @"Hello World";
   [[UIColor whiteColor] setFill]; // red
//    UIRectFill(CGRectInset(self.bounds, 100, 100));
    UIRectFill(self.bounds);

    NSLog (@"%f %f %f %f ", self.bounds.origin.x,self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height);
    /*NSString *str =@"Tic Tac Toe";
    [str drawInRect:CGRectMake(80, 80, 80, 80) withAttributes:nil];*/
    
    //UIColor *color = [UIColor colorWithRed:0.462 green:0.749 blue:0.937 alpha:1.0];
    //tic tac toe
    //float width = self.bounds.size.width - padding*2;
    
    //first horizontal line
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor); //only need once @ top
    CGContextSetLineWidth(ctx, 3.0); //only need once at top
    
    float padding = 5.0;
    float length = self.bounds.size.width - padding;
    float width = self.bounds.size.width;
    
    CGContextMoveToPoint(ctx, padding, width/3);
    CGContextAddLineToPoint(ctx, length, width/3);
    CGContextStrokePath(ctx); // only need this one below the code that needs to be drawn
    
    //2nd horizontal line
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(ctx, 3.0);
    CGContextMoveToPoint(ctx, padding, width*2/3);
    CGContextAddLineToPoint(ctx, length, width*2/3);
    CGContextStrokePath(ctx);
    
    //first vertical line
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(ctx, 3.0);
    
    CGContextMoveToPoint(ctx, width/3, padding);
    CGContextAddLineToPoint(ctx, width/3, length);
    CGContextStrokePath(ctx);
    
    //second vertical line
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(ctx, 3.0);
    
    CGContextMoveToPoint(ctx, width*2/3, padding);
    CGContextAddLineToPoint(ctx, width*2/3, length);
    CGContextStrokePath(ctx);
    
    //circle 
    /*CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    
    CGContextSetLineWidth(ctx, 3.0);

    CGRect circlePoint = (CGRectMake(rect.origin.x, rect.origin.y, 50.0, 50.0));
    
    CGContextStrokeEllipseInRect(ctx, circlePoint);*/
    
    
    

    /*CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(contextRef, 2.0);
    CGContextSetStrokeColorWithColor(contextRef,[color CGColor]);
    CGRect circlePoint = (CGRectMake(50.0, 50.0, 25.0, 25.0)); //starts at x coord 50 and y ooord 50, size is 25 for both
    CGContextStrokeEllipseInRect(contextRef, circlePoint);*/
    
    //CGContextFillEllipseInRect(contextRef, circlePoint) // fill the circle if needed
}


@end
