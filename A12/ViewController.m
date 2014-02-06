//
//  ViewController.m
//  A12
//
//  Created by Anyssa Buchanan on 1/30/14.
//  Copyright (c) 2014 Anyssa Buchanan. All rights reserved.
//

#import "ViewController.h"
#import "View.h"
#import "Shapes.h"
#import <QuartzCore/QuartzCore.h>


@interface ViewController ()

@property (nonatomic) Shapes *a11;
@property (nonatomic) Shapes *a12;
@property (nonatomic) Shapes *a13;
@property (nonatomic) Shapes *a21;
@property (nonatomic) Shapes *a22;
@property (nonatomic) Shapes *a23;
@property (nonatomic) Shapes *a31;
@property (nonatomic) Shapes *a32;
@property (nonatomic) Shapes *a33;


@property (nonatomic) int lastPlay;

@end

@implementation ViewController
@synthesize a11, a12, a13, a21, a22, a23, a31, a32, a33;
@synthesize lastPlay;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect screen = [[UIScreen mainScreen] applicationFrame];
    View *v = [[View alloc] initWithFrame:screen];
//    [v setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:v];

    
    float padding = 5.0;
    float width = self.view.bounds.size.width;
    float length = (self.view.bounds.size.width - padding)/3;
    float top = 20.0;
    
    lastPlay = 0;
    
    CGRect b11 = CGRectMake(padding, padding + top, length, length);
    CGRect b12 = CGRectMake(padding + length, padding + top, length, length);
    CGRect b13 = CGRectMake(padding + length*2, padding + top, length, length);
    CGRect b21 = CGRectMake(padding, padding + length + top, length, length);
    CGRect b22 = CGRectMake(padding+ length, padding + length + top, length, length);
    CGRect b23 = CGRectMake(padding + length*2, padding + length + top, length, length);
    CGRect b31 = CGRectMake(padding, padding + length*2 + top, length, length);
    CGRect b32 = CGRectMake(padding + length, padding + top + length*2, length, length);
    CGRect b33 = CGRectMake(padding + length*2, padding + length*2 + top, length, length);
    

    a11 = [[Shapes alloc] initWithFrame:b11];
    a12 = [[Shapes alloc] initWithFrame:b12];
    a13 = [[Shapes alloc] initWithFrame:b13];
    a21 = [[Shapes alloc] initWithFrame:b21];
    a22 = [[Shapes alloc] initWithFrame:b22];
    a23 = [[Shapes alloc] initWithFrame:b23];
    a31 = [[Shapes alloc] initWithFrame:b31];
    a32 = [[Shapes alloc] initWithFrame:b32];
    a33 = [[Shapes alloc] initWithFrame:b33];
    
    [a11 setOpaque:NO];
    [a12 setOpaque:NO];
    [a13 setOpaque:NO];
    [a21 setOpaque:NO];
    [a22 setOpaque:NO];
    [a23 setOpaque:NO];
    [a31 setOpaque:NO];
    [a32 setOpaque:NO];
    [a33 setOpaque:NO];
    
    
    
    
    UITapGestureRecognizer *tapGestureRecognizer11 = [[UITapGestureRecognizer alloc]
                                                    initWithTarget:self
                                                    action:@selector(handle11:)];
    [a11 addGestureRecognizer:tapGestureRecognizer11];
    
    
    UITapGestureRecognizer *tapGestureRecognizer12 = [[UITapGestureRecognizer alloc]
                                                      initWithTarget:self
                                                      action:@selector(handle12:)];
    [a12 addGestureRecognizer:tapGestureRecognizer12];
    
    
    UITapGestureRecognizer *tapGestureRecognizer13 = [[UITapGestureRecognizer alloc]
                                                      initWithTarget:self
                                                      action:@selector(handle13:)];
    [a13 addGestureRecognizer:tapGestureRecognizer13];
    
    
    UITapGestureRecognizer *tapGestureRecognizer21 = [[UITapGestureRecognizer alloc]
                                                      initWithTarget:self
                                                      action:@selector(handle21:)];
    [a21 addGestureRecognizer:tapGestureRecognizer21];
    
    
    UITapGestureRecognizer *tapGestureRecognizer22 = [[UITapGestureRecognizer alloc]
                                                      initWithTarget:self
                                                      action:@selector(handle22:)];
    [a22 addGestureRecognizer:tapGestureRecognizer22];
    
    UITapGestureRecognizer *tapGestureRecognizer23 = [[UITapGestureRecognizer alloc]
                                                      initWithTarget:self
                                                      action:@selector(handle23:)];
    [a23 addGestureRecognizer:tapGestureRecognizer23];
    
    UITapGestureRecognizer *tapGestureRecognizer31 = [[UITapGestureRecognizer alloc]
                                                      initWithTarget:self
                                                      action:@selector(handle31:)];
    [a31 addGestureRecognizer:tapGestureRecognizer31];
    
    UITapGestureRecognizer *tapGestureRecognizer32 = [[UITapGestureRecognizer alloc]
                                                      initWithTarget:self
                                                      action:@selector(handle32:)];
    [a32 addGestureRecognizer:tapGestureRecognizer32];
    
    UITapGestureRecognizer *tapGestureRecognizer33 = [[UITapGestureRecognizer alloc]
                                                      initWithTarget:self
                                                      action:@selector(handle33:)];
    [a33 addGestureRecognizer:tapGestureRecognizer33];
    
//    [a11 setAlpha: 0.1f];
    
    

    [self.view addSubview:a11];
    [self.view addSubview:a12];
    [self.view addSubview:a13];
    [self.view addSubview:a21];
    [self.view addSubview:a22];
    [self.view addSubview:a23];
    [self.view addSubview:a31];
    [self.view addSubview:a32];
    [self.view addSubview:a33];
    
    
    //figure out to whats the different b/w views hidden and alpha
}



-(void) handle11: (UITapGestureRecognizer *)recognizer

{
    if ([a11 getType] == 0) {
    if (lastPlay == 0) {
        [a11 setType:1];
        lastPlay = 1;
    } else if (lastPlay == 1){
        [a11 setType:2];
        lastPlay = 2;
    } else if (lastPlay == 2){
        [a11 setType:1];
        lastPlay = 1;
    }
    
    
    
    //Code to handle the gesture
    
    //redraws
    [a11 setNeedsDisplay];
        [self checkIfWon];
    }
    
}

-(void) handle12: (UITapGestureRecognizer *)recognizer

{
    
    if([a12 getType] == 0){
    if(lastPlay == 0){
        [a12 setType:1];
        lastPlay = 1;
    }else if (lastPlay ==1){
        [a12 setType:2];
        lastPlay = 2;
    }else if (lastPlay == 2){
        [a12 setType:1];
        lastPlay = 1;
    }
    
    [a12 setNeedsDisplay];
        [self checkIfWon];
    }
}

-(void) handle13: (UITapGestureRecognizer *)recognizer
{
    
    
    if([a13 getType] == 0){
    if(lastPlay == 0){
        [a13 setType:1];
        lastPlay = 1;
    }else if (lastPlay == 1){
        [a13 setType:2];
        lastPlay = 2;
    }else if(lastPlay ==2){
        [a13 setType:1];
        lastPlay = 1;
    }
    
    [a13 setNeedsDisplay];
        [self checkIfWon];

    }
}

-(void) handle21: (UITapGestureRecognizer *)recognizer
{
    
    if([a21 getType] == 0){
    if(lastPlay == 0){
        [a21 setType:1];
        lastPlay = 1;
    }else if (lastPlay == 1){
        [a21 setType: 2];
        lastPlay = 2;
    }else if(lastPlay == 2){
        [a21 setType: 1];
        lastPlay = 1;
    }
    
    [a21 setNeedsDisplay];
        [self checkIfWon];
    }
}
    
-(void) handle22: (UITapGestureRecognizer *)recognizer
{
    
    if([a22 getType] == 0){
    if(lastPlay == 0){
        [a22 setType:1];
        lastPlay = 1;
    }else if (lastPlay == 1){
        [a22 setType: 2];
        lastPlay = 2;
    }else if(lastPlay == 2){
        [a22 setType: 1];
        lastPlay = 1;
    }
    
    [a22 setNeedsDisplay];
        [self checkIfWon];
    }
    
}
    
-(void) handle23: (UITapGestureRecognizer *)recognizer
{
    
    if([a23 getType] == 0){
    if(lastPlay == 0){
        [a23 setType:1];
        lastPlay = 1;
    }else if (lastPlay == 1){
        [a23 setType: 2];
        lastPlay = 2;
    }else if(lastPlay == 2){
        [a23 setType: 1];
        lastPlay = 1;
    }
    
    [a23 setNeedsDisplay];
        [self checkIfWon];
    }
}


-(void) handle31: (UITapGestureRecognizer *)recognizer
{
    
    if([a31 getType] == 0){
    if(lastPlay == 0){
        [a31 setType:1];
        lastPlay = 1;
    }else if (lastPlay == 1){
        [a31 setType: 2];
        lastPlay = 2;
    }else if(lastPlay == 2){
        [a31 setType: 1];
        lastPlay = 1;
    }
    
    [a31 setNeedsDisplay];
        [self checkIfWon];
    }
}

-(void) handle32: (UITapGestureRecognizer *)recognizer
{
    
    if([a32 getType] == 0){
    if(lastPlay == 0){
        [a32 setType:1];
        lastPlay = 1;
    }else if (lastPlay == 1){
        [a32 setType: 2];
        lastPlay = 2;
    }else if(lastPlay == 2){
        [a32 setType: 1];
        lastPlay = 1;
    }
    
    [a32 setNeedsDisplay];
        [self checkIfWon];
    }
}

-(void) handle33: (UITapGestureRecognizer *)recognizer
{
    
    if([a33 getType] == 0){
    if(lastPlay == 0){
        [a33 setType:1];
        lastPlay = 1;
    }else if (lastPlay == 1){
        [a33 setType: 2];
        lastPlay = 2;
    }else if(lastPlay == 2){
        [a33 setType: 1];
        lastPlay = 1;
    }
    
    [a33 setNeedsDisplay];
        [self checkIfWon];
    }
}

-(void) checkIfWon

{
    
    NSInteger myIntegers[9];
    myIntegers[0] = [a11 getType];
    myIntegers[1] = [a12 getType];
    myIntegers[2] = [a13 getType];
    myIntegers[3] = [a21 getType];
    myIntegers[4] = [a22 getType];
    myIntegers[5] = [a23 getType];
    myIntegers[6] = [a31 getType];
    myIntegers[7] = [a32 getType];
    myIntegers[8] = [a33 getType];
    
    if(myIntegers[0] == myIntegers [1] && (myIntegers[1] == myIntegers [2]) && (myIntegers [0] != 0)){
    //you win
        [self lineWin:CGPointMake(0.0, 80.0) :CGPointMake(320.0, 320.0)];
        [self youWin];
    }else if (myIntegers[3] == myIntegers[4] && (myIntegers[4] == myIntegers[5]) && (myIntegers[3] !=0)){
    //you win
        [self lineWin:CGPointMake(0.0, 160.0) :CGPointMake(320.0, 160.0)];
        [self youWin];
    }else if (myIntegers[6] == myIntegers[7] && (myIntegers[7] == myIntegers [8]) && (myIntegers[6] !=0)){
        //you win
         [self lineWin: CGPointMake(0.0, 300.0) : CGPointMake(300.0, 300.0)];
         [self youWin];
    }else if (myIntegers[0] == myIntegers[4] && (myIntegers[4] == myIntegers[8]) && (myIntegers[0] !=0)){
        //you win
        [self lineWin:CGPointMake(320.0,320.0) : CGPointMake(0.0, 0.0)];
        [self youWin];
    }else if (myIntegers[2] == myIntegers[4] && (myIntegers[4] == myIntegers[6]) && (myIntegers[2] !=0)){
        //you win
        [self lineWin: CGPointMake(0.0, 0.0) : CGPointMake(320.0, 320.0)];
        [self youWin];
    }else if (myIntegers[0] == myIntegers[3] && (myIntegers[3] == myIntegers[6]) && (myIntegers[0] !=0)){
        //you win
        
        [self lineWin: CGPointMake(0.0, 300.0) : CGPointMake(0.0, 0.0)];

        [self youWin];
    }else if(myIntegers[1] == myIntegers[4] && (myIntegers[4] == myIntegers[7]) && (myIntegers[1] !=0)){
        //you win
        [self lineWin: CGPointMake(160.0, 300.0) : CGPointMake(160.0, 0.0)];
        [self youWin];
    }else if (myIntegers[2] == myIntegers[5] && (myIntegers[5] == myIntegers[8] && (myIntegers[2] !=0))) {
        //you win
        [self lineWin: CGPointMake(300.0, 300.0) : CGPointMake(300.0, 0.0)];
        [self youWin];
    }
    
}

-(void) lineWin: (CGPoint) start : (CGPoint) end

{
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:start];
    [path addLineToPoint:end];
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = [path CGPath];
    shapeLayer.strokeColor = [[UIColor redColor] CGColor];
    shapeLayer.lineWidth = 3.0;
    shapeLayer.fillColor = [[UIColor clearColor] CGColor];

    
    [self.view.layer addSublayer:shapeLayer];
    
    
}

-(void) youWin
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"CONGRATS!"
                                                    message:@"YOU WON!"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:@"Play Again?", nil];
    [alert show];
    
    
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex != [alertView cancelButtonIndex]) {
        NSLog(@"Play again");
        //clear screen and start over again
        
        [a11 setType:0];
        [a12 setType:0];
        [a13 setType:0];
        [a21 setType:0];
        [a22 setType:0];
        [a23 setType:0];
        [a31 setType:0];
        [a32 setType:0];
        [a33 setType:0];
        
        //re draws
        [a11 setNeedsDisplay];
        [a12 setNeedsDisplay];
        [a13 setNeedsDisplay];
        [a21 setNeedsDisplay];
        [a22 setNeedsDisplay];
        [a23 setNeedsDisplay];
        [a31 setNeedsDisplay];
        [a32 setNeedsDisplay];
        [a33 setNeedsDisplay];
        
    }
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
