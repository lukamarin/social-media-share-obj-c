//
//  SMTwitterShare.m
//  SocialMedia
//
//  Created by Jingwei Huang on 24/05/13.
//  Copyright (c) 2013 Jingwei Huang. All rights reserved.
//

#import "SMTwitterShare.h"

@implementation SMTwitterShare

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
    
    NSString *combineMessage = [NSString stringWithFormat:@"%@ %@", message, url];
    NSString *escapedMessage = [combineMessage stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding];
    
    if ([SMCommon isSocialFrameworkAvailable])
    {
        SLComposeViewController *twitterController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
        {
            SLComposeViewControllerCompletionHandler completionHandler = ^(SLComposeViewControllerResult result){
                [self handleResult:result];
                
                [twitterController dismissViewControllerAnimated:YES completion:Nil];
            };
            [twitterController setCompletionHandler:completionHandler];
            
            if (escapedMessage) [twitterController setInitialText:message];
            if (image) [twitterController addImage:image];
            if (url) [twitterController addURL:url];
            
            [viewController presentViewController:twitterController animated:YES completion:nil];
            
        }
        else{
            NSLog(@"Twitter UnAvailable (iOS 5+ required)");
        }
    }
    else
    {
        if ([TWTweetComposeViewController canSendTweet])
        {
            TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
            
            if (escapedMessage) [tweetSheet setInitialText:message];
            if (image) [tweetSheet addImage:image];
            if (url) [tweetSheet addURL:url];
                        
            [viewController presentModalViewController:tweetSheet animated:YES];
        }
        else
        {
            NSLog(@"Twitter UnAvailable (iOS 5+ required)");
        }
    }
    
    
}

- (void)handleResult:(SLComposeViewControllerResult)result
{
    if (result == SLComposeViewControllerResultCancelled) {
        
        NSLog(@"Twitter Share Cancelled");
        
    } else
    {
        NSLog(@"Twitter Share Done");
    }
}



@end
