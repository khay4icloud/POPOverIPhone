//
//  ViewController.m
//  POPOverController
//
//  Created by Sri Kalyan Ganja on 1/16/17.
//  Copyright © 2017 KLYN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize popUpButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    return UIModalPresentationNone;
}

- (IBAction)showPopOverVC:(id)sender {
    testPOPController *testPOPUP = [[testPOPController alloc] initWithNibName:@"popOver" bundle:nil];
    
    [self showPopOverFor:testPOPUP];
}

- (IBAction)showPopOverStoryboard:(id)sender {
    testPOPController *testStoryboard = [[testPOPController alloc] init];
    testStoryboard = [[UIStoryboard storyboardWithName:
                       @"popUpStoryboard" bundle:nil] instantiateViewControllerWithIdentifier:@"popUpStoryboard"];
    
    [self showPopOverFor:testStoryboard];
}

- (void) showPopOverFor:(UIViewController *)popOverController {
    popOverController.modalPresentationStyle = UIModalPresentationPopover;
    popOverController.preferredContentSize = CGSizeMake(395, 400);
    
    UIPopoverPresentationController *popUPController = popOverController.popoverPresentationController;
    popUPController.delegate = self;
    popUPController.sourceView = self.view;
    
    [self presentViewController:popOverController animated:YES completion:nil];
}
@end
