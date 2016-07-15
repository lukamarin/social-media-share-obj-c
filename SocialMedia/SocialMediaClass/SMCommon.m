//
//  SMCommon.m
//  SocialMedia
//
//  Created by Jingwei Huang on 27/05/13.
//  Copyright (c) 2013 Jingwei Huang. All rights reserved.
//

#import "SMCommon.h"

@implementation SMCommon
// whether the iOS6 Social framework is available
+ (BOOL)isSocialFrameworkAvailable
{
    return NSClassFromString(@"SLComposeViewController") != nil;
}

@end
