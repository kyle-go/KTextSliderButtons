KTextSliderButtons
==================

文字滑动选择器


![whats up](https://raw.github.com/kylescript/KTextSliderButtons/master/whats.png)

How to use?

    [self.silderButtons setTextButtons:@"原创", @"转发微博", @"全部", nil];
    self.silderButtons.delegate = self;
    //实现委托方法就可以啦。
    - (void) clickedButtonAtIndex:(NSUInteger)index {
      NSLog(@"click KTextSliderButtons at index = %lu", (unsigned long)index);
    }
