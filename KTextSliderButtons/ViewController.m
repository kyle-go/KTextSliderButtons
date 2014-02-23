//
//  ViewController.m
//  KTextSliderButtons
//
//  Created by kyle on 2/23/14.
//  Copyright (c) 2014 github.com/kylescript. All rights reserved.
//

#import "ViewController.h"
#import "KTextSliderButtons.h"

@interface ViewController () <KTextSilderButtonsDelegate>

@property (weak, nonatomic) IBOutlet KTextSliderButtons *sliderButtons;
@property (weak, nonatomic) IBOutlet KTextSliderButtons *sliderButtons2;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.sliderButtons setDefaultIndex:2 type:KTextSliderTypeAdjusted withTexts:@"原创", @"转发微博", @"全部", nil];
    self.sliderButtons.delegate = self;
    
    [self.sliderButtons2 setDefaultIndex:1 type:KTextSliderTypeEvenly withTexts:@"原创", @"转发微博", @"全部", nil];
    self.sliderButtons2.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textSliderButtons:(KTextSliderButtons *)buttons clickedButtonAtIndex:(NSUInteger)index
{
    NSLog(@"click KTextSliderButtons at index = %lu", (unsigned long)index);
}

@end
