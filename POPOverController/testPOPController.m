//
//  testPOPController.m
//  POPOverController
//
//  Created by Sri Kalyan Ganja on 1/16/17.
//  Copyright © 2017 KLYN. All rights reserved.
//

#import "testPOPController.h"

@implementation testPOPController


- (void)viewWillAppear:(BOOL)animated {
    
}// Called when the view is about to made visible. Default does nothing

-(void) viewDidLoad {

}

- (IBAction)popUPdismissButton:(id)sender {

    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
