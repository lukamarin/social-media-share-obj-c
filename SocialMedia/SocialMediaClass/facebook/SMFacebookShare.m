//
//  SMFacebookShare.m
//  SocialMedia
//
//  Created by Jingwei Huang on 24/05/13.
//  Copyright (c) 2013 Jingwei Huang. All rights reserved.
//

#import "SMFacebookShare.h"

@implementation SMFacebookShare


- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)shareWithMessage:(NSString *)message Image:(UIImage *)image Url:(NSURL *)url target:(UIViewController *)viewController
{
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
        SLComposeViewController *fbController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        SLComposeViewControllerCompletionHandler completionHandler = ^(SLComposeViewControllerResult result){
            [self handleResult:result];
            
            [fbController dismissViewControllerAnimated:YES completion:Nil];
        };
        [fbController setCompletionHandler:completionHandler];
        
        if (message) [fbController setInitialText:message];
        if (image) [fbController addImage:image];
        if (url) [fbController addURL:url];
        
        [viewController presentViewController:fbController animated:YES completion:nil];
        
    }
    else{
        NSLog(@"facebook UnAvailable");
    }

}

- (void)handleResult:(SLComposeViewControllerResult)result
{
    if (result == SLComposeViewControllerResultCancelled) {
        
        NSLog(@"facebook Share Cancelled");
        
    } else
    {
        NSLog(@"facebook Share Done");
    }
}


@end
