//
//  MainViewController.m
//  SocialMedia
//
//  Created by Jingwei Huang on 24/05/13.
//  Copyright (c) 2013 Jingwei Huang. All rights reserved.
//

#import "MainViewController.h"
#import "SMTwitterShare.h"
#import "SMFacebookShare.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareMessage:(id)sender {
    switch (((UIButton *)sender).tag) {
        case 0:
        {
            SMTwitterShare *twShare = [[SMTwitterShare alloc] init];
            [twShare shareWithMessage:@"hello world" Image:nil Url:nil target:self];
            break;
        }
        case 1:
        {
            SMFacebookShare *fbShare = [[SMFacebookShare alloc] init];
            [fbShare shareWithMessage:@"hello world" Image:nil Url:nil target:self];
            break;
        }
        default:
            break;
    }
    
}

- (IBAction)sharePhoto:(id)sender {
    switch (((UIButton *)sender).tag) {
        case 0:
        {
            SMTwitterShare *twShare = [[SMTwitterShare alloc] init];
            [twShare shareWithMessage:@"hello world" Image:[UIImage imageNamed:@"Default.png"] Url:[NSURL URLWithString:@"http://www.google.com.au"] target:self];
            break;
        }
        case 1:
        {
            SMFacebookShare *fbShare = [[SMFacebookShare alloc] init];
            [fbShare shareWithMessage:@"hello world" Image:[UIImage imageNamed:@"Default.png"] Url:[NSURL URLWithString:@"http://www.google.com.au"] target:self];

            break;
        }
        default:
            break;
    }
        
    
    
}
@end
