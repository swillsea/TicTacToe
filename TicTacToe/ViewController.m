//
//  ViewController.m
//  TicTacToe
//
//  Created by Sam on 3/17/16.
//  Copyright © 2016 Sam Willsea. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;
@property (weak, nonatomic) IBOutlet UIButton *button9;

@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property BOOL playerOneTurn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.playerOneTurn = YES;
}



- (IBAction)onButtonTapped:(UIButton *)sender {
    
    if (self.playerOneTurn) {
        [sender setTitle:@"O" forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        self.playerOneTurn = NO;
        self.whichPlayerLabel.text = @"X";
    } else {
        [sender setTitle:@"X" forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.playerOneTurn = YES;
        self.whichPlayerLabel.text = @"O";
    }

 UIAlertController *whoWon = [UIAlertController alertControllerWithTitle:@"You Won" message:(@"%@", self.whichPlayerLabel.text) preferredStyle:UIAlertControllerStyleAlert];
 UIAlertAction *playAgain = [UIAlertAction actionWithTitle:@"Play Again" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
 [self.button1 setTitle:@" " forState:UIControlStateNormal];
 [self.button2 setTitle:@"  " forState:UIControlStateNormal];
 [self.button3 setTitle:@"   " forState:UIControlStateNormal];
 [self.button4 setTitle:@"    " forState:UIControlStateNormal];
 [self.button5 setTitle:@"     " forState:UIControlStateNormal];
 [self.button6 setTitle:@"      " forState:UIControlStateNormal];
 [self.button7 setTitle:@"       " forState:UIControlStateNormal];
 [self.button8 setTitle:@"        " forState:UIControlStateNormal];
 [self.button9 setTitle:@"         " forState:UIControlStateNormal];
 }];
 [whoWon addAction:playAgain];
 
 if ([self.button1.titleLabel.text isEqualToString:self.button2.titleLabel.text] && [self.button1.titleLabel.text isEqualToString:self.button3.titleLabel.text]) {
 [self presentViewController:whoWon animated:YES completion:nil];
 } else if ([self.button4.titleLabel.text isEqualToString:self.button5.titleLabel.text] && [self.button5.titleLabel.text isEqualToString:self.button6.titleLabel.text]) {
 [self presentViewController:whoWon animated:YES completion:nil];
 } else if ([self.button7.titleLabel.text isEqualToString:self.button8.titleLabel.text] && [self.button8.titleLabel.text isEqualToString:self.button9.titleLabel.text]) {
 [self presentViewController:whoWon animated:YES completion:nil];
 } else if ([self.button1.titleLabel.text isEqualToString:self.button5.titleLabel.text] && [self.button5.titleLabel.text isEqualToString:self.button9.titleLabel.text]) {
 [self presentViewController:whoWon animated:YES completion:nil];
 } else if ([self.button3.titleLabel.text isEqualToString:self.button5.titleLabel.text] && [self.button5.titleLabel.text isEqualToString:self.button7.titleLabel.text]) {
 [self presentViewController:whoWon animated:YES completion:nil];
 } else if ([self.button1.titleLabel.text isEqualToString:self.button4.titleLabel.text] && [self.button4.titleLabel.text isEqualToString:self.button7.titleLabel.text]) {
 [self presentViewController:whoWon animated:YES completion:nil];
 } else if ([self.button2.titleLabel.text isEqualToString:self.button5.titleLabel.text] && [self.button5.titleLabel.text isEqualToString:self.button8.titleLabel.text]) {
 [self presentViewController:whoWon animated:YES completion:nil];
 } else if ([self.button3.titleLabel.text isEqualToString:self.button6.titleLabel.text] && [self.button6.titleLabel.text isEqualToString:self.button9.titleLabel.text]) {
 [self presentViewController:whoWon animated:YES completion:nil];
 } else {
 
 }

    

    
    
    
    //self.Button1.titleLabel.text == self.Button2.titleLabel.text == self.Button3.titleLabel.text
    
    
}


@end
