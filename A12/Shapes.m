//
//  Shapes.m
//  A12
//
//  Created by Anyssa Buchanan on 2/6/14.
//  Copyright (c) 2014 Anyssa Buchanan. All rights reserved.
//

#import "Shapes.h"

@interface Shapes ()
@property (nonatomic)  int type;

@end



@implementation Shapes


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.type = 0;
    }
    return self;
}



-(void)setType:(int)type_
{
    _type = type_;
}

-(int)getType
{
    return _type;
    
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.


- (void)drawRect:(CGRect)rect
{


    
     NSLog (@"%f %f %f %f ", self.bounds.origin.x,self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height);
    
    if (self.type == 0) {
        
    }else if (self.type == 1){
        
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor); //only need once @ top
    CGContextSetLineWidth(ctx, 3.0); //only need once at top
    
    CGContextMoveToPoint(ctx, rect.origin.x ,rect.origin.y);
    CGContextAddLineToPoint(ctx, rect.size.width, rect.size.height);
    CGContextStrokePath(ctx);
    
    CGContextMoveToPoint(ctx, rect.size.width,rect.origin.y);
    CGContextAddLineToPoint(ctx, rect.origin.x, rect.size.height);
    CGContextStrokePath(ctx);
    }
    else if (self.type == 2){
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(ctx, 2.0);
        CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
        CGRect circlePoint = (CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height));
        CGContextStrokeEllipseInRect(ctx, circlePoint);
        
    }


    
    
    
    
 
    // Drawing code
}


@end
