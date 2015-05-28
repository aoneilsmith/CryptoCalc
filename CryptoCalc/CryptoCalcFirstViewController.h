//
//  CryptoCalcFirstViewController.h
//  CryptoCalc
//
//  Created by Andrew O'Neil-Smith on 2/17/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CryptoCalcFirstViewController : UIViewController
{
    //UI
    IBOutlet UILabel *cryptoLabel;
    
    //$$$
    IBOutlet UISlider *dollarSlider;
    IBOutlet UITextField *dollarTextField;
    
    //crypto controls
    IBOutlet UISegmentedControl *cryptoSegment;
    IBOutlet UITextField *cryptoTextField;
    
}

@property (nonatomic, retain) IBOutlet UISlider *dollarSlider;
@property (nonatomic, retain) IBOutlet UITextField *dollarTextField;
@property (nonatomic, retain) IBOutlet UISegmentedControl *cryptoSegment;
@property (nonatomic, retain) IBOutlet UITextField *cryptoTextField;

-(IBAction)sliderValueChanged:(id)sender;
-(IBAction)changedButtonPressed:(id)sender;

-(IBAction)changedSegment:(id)sender;
-(IBAction)updateCryptoText:(id)sender;


-(IBAction)calculate:(id)sender;

@end
