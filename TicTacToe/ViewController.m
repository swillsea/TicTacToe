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

@property UIImage *buttonXImage;
@property UIImage *buttonOImage;
@property UIImage *buttonBlankImage;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.playerOneTurn = YES;
    self.buttonXImage = [UIImage imageNamed:@"X.png"];
    self.buttonOImage = [UIImage imageNamed:@"O.png"];
    self.buttonBlankImage = [UIImage imageNamed:@"blank.png"];
}



- (IBAction)onButtonTapped:(UIButton *)sender {
    
    if (self.playerOneTurn) {
        [sender setImage:self.buttonOImage forState:UIControlStateNormal];
        self.playerOneTurn = NO;
        self.whichPlayerLabel.text = @"Turn of Player 2: X";
    } else {
        [sender setImage:self.buttonXImage forState:UIControlStateNormal];
        self.playerOneTurn = YES;
        self.whichPlayerLabel.text = @"Turn of Player 1: O";
    }
    NSLog(@"%@", sender);
    
    
    UIAlertController *whoWon = [UIAlertController alertControllerWithTitle:@"You Won" message:(@"%@", self.whichPlayerLabel.text) preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *playAgain = [UIAlertAction actionWithTitle:@"Play Again" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self.button1 setImage:self.buttonBlankImage forState:UIControlStateNormal];
        [self.button2 setImage:self.buttonBlankImage forState:UIControlStateNormal];
        [self.button3 setImage:self.buttonBlankImage forState:UIControlStateNormal];
        [self.button4 setImage:self.buttonBlankImage forState:UIControlStateNormal];
        [self.button5 setImage:self.buttonBlankImage forState:UIControlStateNormal];
        [self.button6 setImage:self.buttonBlankImage forState:UIControlStateNormal];
        [self.button7 setImage:self.buttonBlankImage forState:UIControlStateNormal];
        [self.button8 setImage:self.buttonBlankImage forState:UIControlStateNormal];
        [self.button9 setImage:self.buttonBlankImage forState:UIControlStateNormal];
        
    }];
    [whoWon addAction:playAgain];
    
    NSLog(@"this is working%d", [self.button1.imageView.image isEqual:self.button2.imageView.image]);
    
    
    if (([self.button1.imageView.image isEqual:self.button2.imageView.image]) && (self.button2.imageView.image == self.button3.imageView.image)) {
        [self presentViewController:whoWon animated:YES completion:nil];
    } else if ((self.button4.imageView.image == self.button5.imageView.image) && (self.button5.imageView.image == self.button6.imageView.image)) {
        [self presentViewController:whoWon animated:YES completion:nil];
    } else if ((self.button7.imageView.image == self.button8.imageView.image) && (self.button8.imageView.image == self.button9.imageView.image)) {
        [self presentViewController:whoWon animated:YES completion:nil];
    } else if ((self.button1.imageView.image == self.button5.imageView.image) && (self.button5.imageView.image == self.button9.imageView.image)) {
        [self presentViewController:whoWon animated:YES completion:nil];
    } else if ((self.button3.imageView.image == self.button5.imageView.image) && (self.button5.imageView.image == self.button7.imageView.image)) {
        [self presentViewController:whoWon animated:YES completion:nil];
    } else if ((self.button1.imageView.image == self.button4.imageView.image) && (self.button4.imageView.image == self.button7.imageView.image)) {
        [self presentViewController:whoWon animated:YES completion:nil];
    } else if ((self.button2.imageView.image == self.button5.imageView.image) && (self.button5.imageView.image == self.button8.imageView.image)) {
        [self presentViewController:whoWon animated:YES completion:nil];
    } else if ((self.button3.imageView.image == self.button6.imageView.image) && (self.button6.imageView.image == self.button9.imageView.image)) {
        [self presentViewController:whoWon animated:YES completion:nil];
    } else {
        
    }
    
    
}




    

    




@end
