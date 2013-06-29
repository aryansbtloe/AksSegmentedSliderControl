//
//  AKSSegmentedSliderControl.h
//  Betify
//
//  Created by Alok on 28/06/13.
//  Copyright (c) 2013 Konstant Info Private Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class AKSSegmentedSliderControl;
@protocol AKSSegmentedSliderControlDelegate <NSObject>
@optional
- (void)timeSlider:(AKSSegmentedSliderControl *)timeSlider didSelectPointAtIndex:(int)index;

@end

@interface AKSSegmentedSliderControl : UIView
{
    UIBezierPath *_drawPath;

    CGContextRef _context;

	UIImageView * holderView;

    NSMutableArray *_positionPoints;

    int _moveFinalIndex;

	bool firstTimeOnly;
}

@property (nonatomic, assign) float spaceBetweenPoints;
@property (nonatomic, assign) float numberOfPoints;
@property (nonatomic, assign) float heightLine;
@property (nonatomic, assign) float radiusPoint;
@property (nonatomic, assign) CGSize shadowSize;
@property (nonatomic, assign) float shadowBlur;
@property (nonatomic, assign) float strokeSize;
@property (nonatomic, retain) UIColor *strokeColor;
@property (nonatomic, retain) UIColor *shadowColor;
@property (nonatomic, assign) BOOL touchEnabled;
@property (nonatomic, assign, readonly) int currentIndex;
@property (nonatomic, assign) CGGradientRef gradientForeground;
@property (nonatomic, assign) float strokeSizeForeground;
@property (nonatomic, retain) UIColor *strokeColorForeground;
@property (nonatomic, assign) float radiusCircle;
@property (nonatomic, assign) id<AKSSegmentedSliderControlDelegate> delegate;

- (void)moveToIndex:(int)index;
- (CGPoint)positionForPointAtIndex:(int)index;

@end
