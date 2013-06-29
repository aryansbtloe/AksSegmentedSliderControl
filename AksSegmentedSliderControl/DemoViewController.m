//
//  DemoViewController.m
//  AksSegmentedSliderControl
//
//  Created by Alok on 29/06/13.
//  Copyright (c) 2013 Konstant Info Private Limited. All rights reserved.
//

#import "DemoViewController.h"
#import "AKSSegmentedSliderControl.h"


@interface DemoViewController ()

@end

@implementation DemoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

	[self prepareSlider];
}


-(void)prepareSlider{

#define WIDTH  282
#define HEIGHT 34
#define X_POS  20
#define Y_POS  242
#define RADIUS_POINT  10
#define SPACE_BETWEEN_POINTS  44.75
#define SLIDER_LINE_WIDTH     9
#define IPHONE_4_SUPPORT      88

	CGRect sliderConrolFrame = CGRectNull;

	sliderConrolFrame = CGRectMake(X_POS,Y_POS+6.5,WIDTH,HEIGHT);

    AKSSegmentedSliderControl* sliderControl = [[AKSSegmentedSliderControl alloc] initWithFrame:sliderConrolFrame];
    [sliderControl setDelegate:self];
	[sliderControl moveToIndex:2];
	[sliderControl setSpaceBetweenPoints:SPACE_BETWEEN_POINTS];
	[sliderControl setRadiusPoint:RADIUS_POINT];
	[sliderControl setHeightLine:SLIDER_LINE_WIDTH];
    [self.view addSubview:sliderControl];

}

- (void)timeSlider:(AKSSegmentedSliderControl *)timeSlider didSelectPointAtIndex:(int)index{

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
