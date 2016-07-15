//
//  SMTwitterShare.h
//  SocialMedia
//
//  Created by Jingwei Huang on 24/05/13.
//  Copyright (c) 2013 Jingwei Huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Social/Social.h>
#import <Twitter/Twitter.h>
#import "SMCommon.h"

@interface SMTwitterShare : NSObject

- (void)shareWithMessage:(NSString *)message Image:(UIImage *)image Url:(NSURL *)url target:(UIViewController *)viewController;

@end
