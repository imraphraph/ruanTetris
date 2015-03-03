//
//  ViewController.m
//  ruanTetris
//
//  Created by student on 3/1/15.
//  Copyright (c) 2015 Nico Ruan. All rights reserved.
//

#import "ViewController.h"
#import "BlockBuilder.h"

@interface ViewController (){
    CGPoint blockInitCenter;
    NSInteger blockWidth;
    CGPoint center;
}
@property (nonatomic) UIView *blockView;
@property (nonatomic) BlockBuilder *block;
@property(nonatomic) UITapGestureRecognizer *tapGesture;
@property(nonatomic) UISwipeGestureRecognizer *rightSwipe;
@property BOOL inMotion;
//@synthesize shapeNum;


- (IBAction)swipeRight:(id)sender;
- (IBAction)tap:(UITapGestureRecognizer *)sender;

- (IBAction)IClicked:(UIButton *)sender;
- (IBAction)JClicked:(UIButton *)sender;
- (IBAction)LClicked:(UIButton *)sender;
- (IBAction)OClicked:(UIButton *)sender;
- (IBAction)SClicked:(UIButton *)sender;
- (IBAction)TClicked:(UIButton *)sender;
- (IBAction)ZClicked:(UIButton *)sender;




@end

const NSInteger downAnimationInitDuration = 5.0;
const NSInteger sideAnimationDuration = 1.0;
const CGFloat margins = 10.0;
const NSInteger widthInBlocks = 10;
//NSInteger shapeNum= 0;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect appFrame = [[UIScreen mainScreen] applicationFrame];
    NSInteger gameViewWidth = (appFrame.size.width - 2 * margins);
    blockWidth = gameViewWidth / widthInBlocks;

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)swipeRight:(id)sender {
    [self didSwipeLeft:sender];
}

- (IBAction)tap:(UITapGestureRecognizer *)sender {
    [self handleTap:sender];
}
- (IBAction)IClicked:(UIButton *)sender {
    //[self IBlock];
    [[self block] removeFromSuperview];
    NSInteger width = blockWidth, height = width;
    
    //self.block.shapeNum = -1;
    CGRect frame = CGRectMake(margins, 25, width, 4*height);
    self.block = [[BlockBuilder alloc]initWithFrame:frame withShape:-1];
    [self.block setBackgroundColor:[UIColor clearColor] ];
    
    self.blockView = [[UIView alloc]initWithFrame:self.block.frame];
    [self.blockView addSubview: [self block]];
    [self.view addSubview:[self blockView]];
    
}

- (IBAction)JClicked:(UIButton *)sender {
    [[self block] removeFromSuperview];
    NSInteger width = blockWidth, height = width;
    
    CGRect frame = CGRectMake(margins, 25, 2*width, 3*height);
    self.block = [[BlockBuilder alloc] initWithFrame:frame withShape:1];
    [self.block setBackgroundColor:[UIColor clearColor]];
    
    self.blockView = [[UIView alloc]initWithFrame:self.block.frame];
    [self.blockView addSubview: [self block]];
    [self.view addSubview:[self blockView]];
    
    
}

- (IBAction)LClicked:(UIButton *)sender {
    [[self block] removeFromSuperview];
    NSInteger width = blockWidth, height = width;
    
    CGRect frame = CGRectMake(margins, 25, 2*width, 3*height);
    self.block = [[BlockBuilder alloc] initWithFrame:frame withShape:2];
    [self.block setBackgroundColor:[UIColor clearColor]];
    
    self.blockView = [[UIView alloc]initWithFrame:self.block.frame];
    [self.blockView addSubview: [self block]];
    [self.view addSubview:[self blockView]];
  

}

- (IBAction)OClicked:(UIButton *)sender {
    [[self block] removeFromSuperview];
    NSInteger width = blockWidth, height = width;
   
    CGRect frame = CGRectMake(margins, 25, 2*width, 2*height);
    self.block = [[BlockBuilder alloc]initWithFrame:frame withShape:3];
    [self.block setBackgroundColor:[UIColor clearColor] ];
    
    
    self.blockView = [[UIView alloc]initWithFrame:self.block.frame];
    [self.blockView addSubview: [self block]];
    [self.view addSubview:[self blockView]];
}

- (IBAction)SClicked:(UIButton *)sender {
    [[self block] removeFromSuperview];
    NSInteger width = blockWidth, height = width;
    
    CGRect frame = CGRectMake(margins, 25, 3*width, 2*height);
    self.block = [[BlockBuilder alloc]initWithFrame:frame withShape:5];
    [self.block setBackgroundColor:[UIColor clearColor] ];
    
    self.blockView = [[UIView alloc]initWithFrame:self.block.frame];
    [self.blockView addSubview: [self block]];
    [self.view addSubview:[self blockView]];
}

- (IBAction)TClicked:(UIButton *)sender {
    [[self block] removeFromSuperview];
    NSInteger width = blockWidth, height = width;
    
    CGRect frame = CGRectMake(margins, 25, 3*width, 2*height);
    self.block = [[BlockBuilder alloc]initWithFrame:frame withShape:4];
    [self.block setBackgroundColor:[UIColor clearColor] ];
    
    self.blockView = [[UIView alloc]initWithFrame:self.block.frame];
    [self.blockView addSubview: [self block]];
    [self.view addSubview:[self blockView]];
}

- (IBAction)ZClicked:(UIButton *)sender {
    [[self block] removeFromSuperview];
    NSInteger width = blockWidth, height = width;
    //shapeNum = 6;
    
    CGRect frame = CGRectMake(margins, 25, 3*width, 2*height);
    self.block = [[BlockBuilder alloc]initWithFrame:frame withShape:6];
    [self.block setBackgroundColor:[UIColor clearColor] ];
    
    self.blockView = [[UIView alloc]initWithFrame:self.block.frame];
    [self.blockView addSubview: [self block]];
    [self.view addSubview:[self blockView]];
}

-(void) didSwipeLeft: (UISwipeGestureRecognizer *) sender
{
    CALayer *layer = self.block.layer;
    CFTimeInterval pausedTime = [layer convertTime:CACurrentMediaTime() fromLayer:nil];
    
    layer.speed = 0.0;
    layer.timeOffset = pausedTime;
    center = self.blockView.center;
    center.x += blockWidth;
    [UIView animateWithDuration: sideAnimationDuration animations:^{
        self.blockView.center = center;
    } completion:^(BOOL finished) {
        CFTimeInterval pausedTime = [layer timeOffset];
        layer.speed = 1.0;
        layer.timeOffset = 0.0;
        layer.beginTime = 0.0;
        CFTimeInterval timeSincePause = [layer convertTime:CACurrentMediaTime() fromLayer:nil] - pausedTime;
        layer.beginTime = timeSincePause;
    }];
    
    NSLog(@"left swipe");
}

-(void) handleTap: (UITapGestureRecognizer *) sender
{
    if( self.inMotion ) {
        return;
    }
    self.inMotion = YES;
    self.block.center = blockInitCenter;
    center = self.block.center;
    CGPoint newCenter = CGPointMake(center.x, center.y + 350);
    [UIView animateWithDuration: downAnimationInitDuration delay:0.0
                        options:UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                         self.block.center = newCenter;
                     } completion:^(BOOL finished) {
                         NSLog(@"Animation complete with status: %@", @(finished));
                         [self.view removeGestureRecognizer:self.rightSwipe];
                         [self.view removeGestureRecognizer:self.tapGesture];
                     }];
}

@end
