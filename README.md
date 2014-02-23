KTextSliderButtons
==================

文字滑动选择器


![whats up](https://raw.github.com/kylescript/KTextSliderButtons/master/whats.png)

How to use?

    [self.sliderButtons setDefaultIndex:2 type:KTextSliderTypeAdjusted withTexts:@"原创", @"转发微博", @"全部", nil];
    self.sliderButtons.delegate = self;
    //实现委托方法就可以啦。
    - (void)textSliderButtons:(KTextSliderButtons *)buttons clickedButtonAtIndex:(NSUInteger)index
    {
        NSLog(@"click KTextSliderButtons at index = %lu", (unsigned long)index);
    }
