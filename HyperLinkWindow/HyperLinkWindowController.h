//
//  HyperLinkWindowController.h
//  HyperLinkWindow
//
//  Created by   on 2019/05/17.
//  Copyright © 2019年 h. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface HyperLinkWindowController : NSWindowController
- (id)initWithMessage:(NSString *)message hyperLink:(NSString *)hyperLink;
@end

NS_ASSUME_NONNULL_END
