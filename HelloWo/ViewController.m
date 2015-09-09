//
//  ViewController.m
//  HelloWo
//
//  Created by Admin on 09.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signinClicked:(id)sender {
        if ([[self.txtUsername text] isEqualToString:@"Hello"] || [[self.txtPassword text] isEqualToString:@"World"]) {
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Correct Password" message:@"The password is correct" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
            [alert show];
            
            [self performSegueWithIdentifier:@"login_s" sender:self];    }
        else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Incorrect Password" message:@"The password is incorrect" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
            [alert show];        }
    
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
@end
