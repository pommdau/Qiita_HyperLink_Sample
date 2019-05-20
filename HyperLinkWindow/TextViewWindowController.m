//
//  TextViewWindowController.m
//  HyperLinkWindow
//
//  Created by HIROKI IKEUCHI on 2019/05/17.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "TextViewWindowController.h"
#import "myTextView.h"

@interface TextViewWindowController ()
@property NSString *message;    // 本文のメッセージ
@property (weak) IBOutlet NSScrollView *myScrollView;
@property (unsafe_unretained) IBOutlet myTextView *myTextView;

@end

@implementation TextViewWindowController

- (id)initWithMessage:(NSString *)message {
    if (self = [super initWithWindowNibName:[self className] owner:self]) {
        _message = message;
    }
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    [self updateLabels];
}

/**
 @brief ラベルを更新する
 */
- (void)updateLabels {
    // 本文の設定
    [_myTextView setString:_message];
    [_myTextView updateScrollViewHeight];
    
//    _myTextView.font = [NSFont systemFontOfSize:[NSFont systemFontSize]];
////    _myTextView.string = @"Lorem ipsum";
//
//    [_myTextView.layoutManager ensureLayoutForTextContainer:_myTextView.textContainer];
//    _myTextView.frame = [_myTextView.layoutManager usedRectForTextContainer:_myTextView.textContainer];
    
    
}

@end
