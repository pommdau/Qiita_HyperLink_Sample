//
//  AppDelegate.m
//  HyperLinkWindow
//
//  Created by   on 2019/05/17.
//  Copyright © 2019年 h. All rights reserved.
//

#import "AppDelegate.h"
#import "HyperLinkWindowController.h"
#import "TextViewWindowController.h"

@interface AppDelegate ()
@property (nonatomic, readonly) HyperLinkWindowController *hyperLinkWindowController;
@property (nonatomic, readonly) TextViewWindowController *textViewWindowController;
@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
//    HyperLinkWindowController *hyperLinkWindowController = [[HyperLinkWindowController alloc]
//                                                            initWithMessage:@"1+2+3+4+5+...+10の計算に於いて、エラーが発生しました。"
//                                                            @"\r\nお手数ですが小学1年生からやり直して下さい。"
//                                                            hyperLink:@"https://sho.jp/sho1/"];
//    [hyperLinkWindowController showWindow:self];
//    _hyperLinkWindowController = hyperLinkWindowController;
    
    
    TextViewWindowController *textViewWindowController = [[TextViewWindowController alloc]
                                                          initWithMessage:@"1+2+3+4+5+...+10の計算に於いて、エラーが発生しました。1+2+3+4+5+...+10の計算に於いて、エラーが発生しました。1+2+3+4+5+...+10の計算に於いて、エラーが発生しました。1+2+3+4+5+...+10の計算に於いて、エラーが発生しました。"
                                                          @"\r\nお手数ですが小学1年生からやり直して下さい。"
                                                          @"1+2+3+4+5+...+10の計算に於いて、エラーが発生しました。"
                                                          @"\r\nお手数ですが小学1年生からやり直して下さい。"
                                                          @"1+2+3+4+5+...+10の計算に於いて、エラーが発生しました。"
                                                          @"\r\nお手数ですが小学1年生からやり直して下さい。"
                                                          ];
    [textViewWindowController showWindow:self];
    _textViewWindowController = textViewWindowController;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
