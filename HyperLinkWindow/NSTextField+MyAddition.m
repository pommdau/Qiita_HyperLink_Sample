//
//  NSTextField+MyAddition.m
//  HyperLinkWindow
//
//  Created by HIROKI IKEUCHI on 2019/05/17.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "NSTextField+MyAddition.h"

@implementation NSTextField (MyAddition)

-(NSSize)intrinsicContentSize
{
    if ( ![self.cell wraps] ) {
        return [super intrinsicContentSize];
    }
    
    NSRect frame = [self frame];
    
    CGFloat width = frame.size.width;
    
    // Make the frame very high, while keeping the width
    frame.size.height = CGFLOAT_MAX;
    
    // Calculate new height within the frame
    // with practically infinite height.
    CGFloat height = [self.cell cellSizeForBounds: frame].height;
    
    NSLog(@"%f,%f", width, height);
    return NSMakeSize(width, height);
}

//// you need to invalidate the layout on text change, else it wouldn't grow by changing the text
//- (void)textDidChange:(NSNotification *)notification {
//    [super textDidChange:notification];
//    [self invalidateIntrinsicContentSize];
//}

@end
