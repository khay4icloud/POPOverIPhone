//
//  ViewController.h
//  POPOverController
//
//  Created by Sri Kalyan Ganja on 1/16/17.
//  Copyright © 2017 KLYN. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "testPOPController.h"



@interface ViewController : UIViewController <UIPopoverPresentationControllerDelegate>

- (IBAction)showPopOverVC:(id)sender;
- (IBAction)showPopOverStoryboard:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *popUpButton;

@end

