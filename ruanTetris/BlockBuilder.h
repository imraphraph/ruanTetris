//
//  BlockBuilder.h
//  ruanTetris
//
//  Created by student on 3/1/15.
//  Copyright (c) 2015 Nico Ruan. All rights reserved.

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BlockBuilder : UIView

-(id) initWithFrame: (CGRect) frame withShape: (NSInteger) shapeNum;
-(void) drawRect:(CGRect)rect;
-(void) BuildI: (CGRect) rect;
-(void) BuildJ: (CGRect) rect;
-(void) BuildL: (CGRect) rect;
-(void) BuildO: (CGRect) rect;
-(void) BuildS: (CGRect) rect;
-(void) BuildT: (CGRect) rect;
-(void) BuildZ: (CGRect) rect;
@property(nonatomic) NSInteger shapeNum;


@end
