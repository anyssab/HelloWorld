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
{
    // Drawing code
    NSString *str = @"Hello World";
    NSString *str =@"My name is Anyssa";
    [str drawInRect:<#(CGRect)#> withAttributes:<#(NSDictionary *)#>]
}


@end
