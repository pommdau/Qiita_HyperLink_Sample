//
//  myTextView.m
//  HyperLinkWindow
//
//  Created by HIROKI IKEUCHI on 2019/05/20.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "myTextView.h"

@implementation myTextView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)didChangeText
{
    NSLog(@"hello");
    NSScrollView *scrollView = (NSScrollView *) self.superview.superview;
    NSRect frame = scrollView.frame;
    
    // Calculate height
//    NSUInteger numberOfLines = [self numberOfLines];
    NSUInteger numberOfLines = 10;
    NSUInteger height = frame.size.height;
    if (numberOfLines <= 13)
    {
        height = 22 + (numberOfLines - 1) * 14;
        if (height < 22)
            height = 22;
    }
    
    // Update height
    frame.size.height = height;
    self.superview.superview.frame = frame;
}

@end
