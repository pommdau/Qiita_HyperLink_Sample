//
//  HyperLinkWindowController.m
//  HyperLinkWindow
//
//  Created by   on 2019/05/17.
//  Copyright © 2019年 h. All rights reserved.
//

#import "HyperLinkWindowController.h"

@interface HyperLinkWindowController ()
@property NSString *message;    // 本文のメッセージ
@property NSString *hyperLink;  // ハイパーリンク先のURL
@property (weak) IBOutlet NSTextField *messageLabel;
@property (weak) IBOutlet NSTextField *hyperLinkLabel;
@end

@implementation HyperLinkWindowController

- (id)initWithMessage:(NSString *)message hyperLink:(NSString *)hyperLink {
    if (self = [super initWithWindowNibName:[self className] owner:self]) {
        _message = message;
        _hyperLink = hyperLink;
    }
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    [self updateLabels];
}

- (IBAction)closeButtonPush:(id)sender {
    [NSApp terminate:self];
}

/**
 @brief ラベルを更新する
 */
- (void)updateLabels {
    // 本文の設定
    [_messageLabel setStringValue:_message];
    // ハイパーリンクの設定
    [_hyperLinkLabel setAllowsEditingTextAttributes: YES];
    [_hyperLinkLabel setSelectable: YES];
    NSMutableAttributedString *attrbutedString = [[NSMutableAttributedString alloc]
                                                  initWithString:_hyperLinkLabel.stringValue
                                                  attributes:@{
                                                               NSForegroundColorAttributeName:[NSColor blueColor],
                                                               NSFontAttributeName           :[NSFont  systemFontOfSize:13.0f],
                                                               NSUnderlineStyleAttributeName :@(NSUnderlineStyleSingle)
                                                               }
                                                  ];
    [attrbutedString addAttribute:NSLinkAttributeName
                            value:_hyperLink
                            range:NSMakeRange(0, attrbutedString.length)];
    [_hyperLinkLabel setAttributedStringValue:attrbutedString];
}


@end
