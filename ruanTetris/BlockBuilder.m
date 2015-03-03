//
//  BlockBuilder.m
//  ruanTetris
//
//  Created by student on 3/1/15.
//  Copyright (c) 2015 Nico Ruan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlockBuilder.h"




@implementation BlockBuilder

//@synthesize shapeNum;
-(id) initWithFrame:(CGRect)frame withShape:(NSInteger)numShape{
    self = [super initWithFrame:frame];
    if (self) {
        self.shapeNum = numShape;
        }
    return self;
}

-(void) drawRect:(CGRect)rect{ //shape:(NSInteger) shapeNum{
    //ViewController = (UIViewController *) self.viewControl;

    NSLog(@"in draw rect");
    NSLog(@"%li", (long)self.shapeNum);
    if (self.shapeNum == -1) {
        [self BuildI:rect];
        
    }
    else if (self.shapeNum == 1)
        [self BuildJ:rect];
    else if (self.shapeNum == 2)
        [self BuildL:rect];
    else if (self.shapeNum == 3)
        [self BuildO:rect];
    else if (self.shapeNum == 4)
        [self BuildT:rect];
    else if (self.shapeNum == 5)
        [self BuildS:rect];
    else if (self.shapeNum == 6)
        [self BuildZ:rect];
    }

-(void) BuildI:(CGRect)rect{
    //found in chapter 4 of IOS drawing textbook
    //establishes new path
    NSInteger width = rect.size.width, height = width;
    [[UIColor blueColor] setFill];
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath fill];
    [bezierPath stroke];
    
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath2 fill];
    [bezierPath2 stroke];

    UIBezierPath *bezierPath3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y+ 2*height, width, height) cornerRadius:6.0];
    [bezierPath3 fill];
    [bezierPath3 stroke];

    UIBezierPath *bezierPath4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y+ 3* height, width, height) cornerRadius:6.0];
    [bezierPath4 fill];
    [bezierPath4 stroke];

    
}

-(void) BuildJ:(CGRect) rect{
    //have to build differently than I and O because we cannot simply fill out the whole frame
 
    NSInteger width = rect.size.width/2, height = width;
    [[UIColor yellowColor] setFill];
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath fill];
    [bezierPath stroke];
    
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath2 fill];
    [bezierPath2 stroke];
    
    UIBezierPath *bezierPath3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y+ 2*height, width, height) cornerRadius:6.0];
    [bezierPath3 fill];
    [bezierPath3 stroke];
    
    UIBezierPath *bezierPath4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y+ 2*height, width, height) cornerRadius:6.0];
    [bezierPath4 fill];
    [bezierPath4 stroke];


}

-(void) BuildL:(CGRect) rect{
    NSInteger width = rect.size.width/2, height = width;
    [[UIColor orangeColor] setFill];
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath fill];
    [bezierPath stroke];
    
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath2 fill];
    [bezierPath2 stroke];
    
    UIBezierPath *bezierPath3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y+ 2*height, width, height) cornerRadius:6.0];
    [bezierPath3 fill];
    [bezierPath3 stroke];
    
    UIBezierPath *bezierPath4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y+ 2*height, width, height) cornerRadius:6.0];
    [bezierPath4 fill];
    [bezierPath4 stroke];
   
}
-(void) BuildO:(CGRect) rect{
    NSInteger width = rect.size.width/2, height = width;
    [[UIColor redColor] setFill];
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath fill];
    [bezierPath stroke];
    
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath2 fill];
    [bezierPath2 stroke];
    
    UIBezierPath *bezierPath3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath3 fill];
    [bezierPath3 stroke];
    
    UIBezierPath *bezierPath4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y+ height, width, height) cornerRadius:6.0];
    [bezierPath4 fill];
    [bezierPath4 stroke];
    
}

-(void) BuildS:(CGRect)rect{
    NSInteger width = rect.size.width/3, height = width;
    [[UIColor greenColor] setFill];
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath fill];
    [bezierPath stroke];
    
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath2 fill];
    [bezierPath2 stroke];
    
    UIBezierPath *bezierPath3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath3 fill];
    [bezierPath3 stroke];
    
    UIBezierPath *bezierPath4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+2*width, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath4 fill];
    [bezierPath4 stroke];
   
}

-(void) BuildT:(CGRect)rect{
    NSInteger width = rect.size.width/3, height = width;
    [[UIColor purpleColor] setFill];
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath fill];
    [bezierPath stroke];
    
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath2 fill];
    [bezierPath2 stroke];
    
    UIBezierPath *bezierPath3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath3 fill];
    [bezierPath3 stroke];
    
    UIBezierPath *bezierPath4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+2*width, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath4 fill];
    [bezierPath4 stroke];
    
}

-(void) BuildZ:(CGRect)rect{
    NSInteger width = rect.size.width/3, height = width;
    [[UIColor cyanColor] setFill];
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath fill];
    [bezierPath stroke];
    
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath2 fill];
    [bezierPath2 stroke];
    
    UIBezierPath *bezierPath3 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+width, rect.origin.y, width, height) cornerRadius:6.0];
    [bezierPath3 fill];
    [bezierPath3 stroke];
    
    UIBezierPath *bezierPath4 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(rect.origin.x+2*width, rect.origin.y+height, width, height) cornerRadius:6.0];
    [bezierPath4 fill];
    [bezierPath4 stroke];
    
}


@end