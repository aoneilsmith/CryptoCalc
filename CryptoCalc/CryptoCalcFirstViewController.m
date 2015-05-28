//
//  CryptoCalcFirstViewController.m
//  CryptoCalc
//
//  Created by Andrew O'Neil-Smith on 2/17/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import "CryptoCalcFirstViewController.h"
#import "CryptoCalcShared.h"

@interface CryptoCalcFirstViewController ()

@end

@implementation CryptoCalcFirstViewController

@synthesize dollarSlider, dollarTextField;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Currency", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"138-scales"];
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
-(IBAction)calculate:(id)sender
{
    NSLog(@"I calculated.");
    //dollarTextField *
    //CryptoCalcShared. = value.cryptoTextField;
    
    NSString *calcValue = [cryptoTextField text];
    float value = [calcValue floatValue];
    cryptoTextField.text = [NSString stringWithFormat:@"%.02f", value];
    
            if([cryptoTextField canResignFirstResponder]) [cryptoTextField resignFirstResponder];
    


}

-(IBAction) sliderValueChanged:(UISlider *)sender{
    dollarTextField.text = [NSString stringWithFormat:@"%.02f", [sender value]];
    
    NSString *textValue = [dollarTextField text];

    float value = [textValue floatValue];

    dollarSlider.value = value;
}

-(IBAction)changedSegment:(id)sender{
    if (UISegmentedControlSegmentLeft) {
        //currency exchange multiplier
        //USdollar * sharedBit = update cryptoTextField;
        
    }
    else if (UISegmentedControlSegmentCenter){
        //USDollar * sharedLit =  update cryptoTextField;
    }
    else if(UISegmentedControlSegmentRight){
        //USDollar * sharedDog = update cryptoTextField;
    }
}

-(IBAction)updateCryptoText:(id)sender{
    //update cryptoTextField;
        if([cryptoTextField canResignFirstResponder]) [cryptoTextField resignFirstResponder];
    cryptoTextField.userInteractionEnabled=NO;

}

-(IBAction) changedButtonPressed:(id)sender{
    NSString *textValue = [dollarTextField text];
    float value = [textValue floatValue];
    if (value < 0) value = 0;
    if (value > 100) value = 100;
    dollarSlider.value = value;
    dollarTextField.text = [NSString stringWithFormat:@"%.02f", value];
    //dollarSlider.value = value;
    
    if([dollarTextField canResignFirstResponder]) [dollarTextField resignFirstResponder];
    if([cryptoTextField canResignFirstResponder]) [cryptoTextField resignFirstResponder];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if (dollarTextField || cryptoTextField)
    {
        if([dollarTextField canResignFirstResponder]) [dollarTextField resignFirstResponder];
        if([cryptoTextField canResignFirstResponder]) [cryptoTextField resignFirstResponder];
    }
       [super touchesBegan:touches withEvent:event];
    cryptoTextField.userInteractionEnabled=NO;
}
- (BOOL)textFieldShouldReturn:(UITextField *)tf
{
	// dismiss the keyboard
	[tf resignFirstResponder];
    
    
	return YES;
}

@end
