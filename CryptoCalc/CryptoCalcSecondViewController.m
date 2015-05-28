//
//  CryptoCalcSecondViewController.m
//  CryptoCalc
//
//  Created by Andrew O'Neil-Smith on 2/17/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import "CryptoCalcSecondViewController.h"
#import "CryptoCalcShared.h"


@interface CryptoCalcSecondViewController ()

@end

@implementation CryptoCalcSecondViewController
@synthesize bitTextField, litTextField, dogTextField;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Settings", @"Settings");
        self.tabBarItem.image = [UIImage imageNamed:@"20-gear2"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if (bitTextField || litTextField || dogTextField)
    {
        if([bitTextField canResignFirstResponder]) [bitTextField resignFirstResponder];
        if([litTextField canResignFirstResponder]) [litTextField resignFirstResponder];
        if([dogTextField canResignFirstResponder]) [dogTextField resignFirstResponder];
    
    }
    [super touchesBegan:touches withEvent:event];
}

-(IBAction)changedButtonPressed:(id)sender{
    if([bitTextField canResignFirstResponder]) [bitTextField resignFirstResponder];
    if([litTextField canResignFirstResponder]) [litTextField resignFirstResponder];
    if([dogTextField canResignFirstResponder]) [dogTextField resignFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)tf
{
	// dismiss the keyboard
	[tf resignFirstResponder];
    
    
	return YES;
}
@end
