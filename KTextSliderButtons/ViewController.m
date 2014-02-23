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

@property (weak, nonatomic) IBOutlet KTextSliderButtons *silderButtons;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.silderButtons setDefaultIndex:1 withTexts:@"原创", @"转发微博", @"全部", nil];
    self.silderButtons.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) clickedButtonAtIndex:(NSUInteger)index
{
    NSLog(@"click KTextSliderButtons at index = %lu", (unsigned long)index);
}

@end
