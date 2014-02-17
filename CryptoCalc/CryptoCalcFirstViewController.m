//
//  CryptoCalcFirstViewController.m
//  CryptoCalc
//
//  Created by Andrew O'Neil-Smith on 2/17/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import "CryptoCalcFirstViewController.h"

@interface CryptoCalcFirstViewController ()

@end

@implementation CryptoCalcFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
