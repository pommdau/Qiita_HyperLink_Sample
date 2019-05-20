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

- (void)updateScrollViewHeight {
    NSScrollView *scrollView = (NSScrollView *) self.superview.superview;
    NSRect frame = scrollView.frame;
    
    // Calculate height
    NSUInteger numberOfLines = [self numberOfLines];
    //    NSUInteger numberOfLines = 10;
    NSUInteger height = frame.size.height;
    NSLog(@"frame.size.height:%d", height);
    if (numberOfLines <= 13)
    {
        height = 22 + (numberOfLines - 1) * 14 + 44;
        if (height < 22)
            height = 22;    // 1行もない場合
    }
    
    // Update height
    frame.size.height = height;
    self.superview.superview.frame = frame;
}

- (void)didChangeText
{
    [self updateScrollViewHeight];
}

- (NSInteger)numberOfLines {
    
    
    
    
    NSLayoutManager *layoutManager = [self layoutManager];
    unsigned numberOfLines, index, numberOfGlyphs =
    [layoutManager numberOfGlyphs];
    NSRange lineRange;
    for (numberOfLines = 0, index = 0; index < numberOfGlyphs; numberOfLines++){
        (void) [layoutManager lineFragmentRectForGlyphAtIndex:index
                                               effectiveRange:&lineRange];
        index = NSMaxRange(lineRange);
    }
    NSLog(@"numberofLines:%d", numberOfLines);
    return numberOfLines;
}



@end
