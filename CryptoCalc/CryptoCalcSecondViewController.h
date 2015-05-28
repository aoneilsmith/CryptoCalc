//
//  CryptoCalcSecondViewController.h
//  CryptoCalc
//
//  Created by Andrew O'Neil-Smith on 2/17/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CryptoCalcSecondViewController : UIViewController
{
    //UI
    IBOutlet UITextField *bitTextField;
    IBOutlet UITextField *litTextField;
    IBOutlet UITextField *dogTextField;

}

@property (nonatomic, retain) IBOutlet UITextField *bitTextField;
@property (nonatomic, retain) IBOutlet UITextField *litTextField;
@property (nonatomic, retain) IBOutlet UITextField *dogTextField;

-(IBAction)changedButtonPressed:(id)sender;


@end
