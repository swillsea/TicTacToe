//
//  ViewController.m
//  TicTacToe
//
//  Created by Sam on 3/17/16.
//  Copyright © 2016 Sam Willsea. All rights reserved.
//

#import "ViewController.h"
#import "Gridbox.h"

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
@property NSMutableArray *masterArray;
@property int gridSize;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.playerOneTurn = YES;
    
    self.gridSize = 2;
    Gridbox *gridbox = [[Gridbox alloc] init];
    NSMutableArray *smallArray;
    
    for ( int y = 0; y <= self.gridSize; y++) {
        
        for (int x = 0; x <= self.gridSize; x++) {
            
            gridbox.posX = x;
            gridbox.posY = y;
            gridbox.value = nil;
            
            [smallArray addObject:gridbox];
            NSLog(@"%i %i %@", gridbox.posX, gridbox.posY, gridbox.value);
        }
        
        [self.masterArray addObject:smallArray];
    }
    
    
}

//creates method to give win condition comparison neater code
- (NSString *) getButtonTitleState: (UIButton*) button {
    return [button titleForState:[button state]];
}


- (IBAction)onButtonTapped:(UIButton *)sender {
    
    //sets the button values and changes player turn
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
   
    
    //rowWins
    
    for (int i = 0; i <= self.gridSize; i++) {
        
        
        for (int j = 0; j <= self.gridSize; i++) {
            (int) self.masterArray[i][i].x;
            
            
        }
    }
    
    //columnWins
    
    
    //backSlashWins
    
    
    //forwardSlashWins
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
    
    
    
    
    
    
    
    
    
    
    
    
/*
    
    //sets win alert and resets to play again
    UIAlertController *whoWon = [UIAlertController alertControllerWithTitle:@"You Won" message:(@"%c", [sender titleForState:[sender state]]) preferredStyle:UIAlertControllerStyleAlert];
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

    
    //defines win conditions and presents alert when won
    if (       [[self getButtonTitleState:self.button1] isEqualToString:[self getButtonTitleState:self.button2]]
            && [[self getButtonTitleState:self.button2] isEqualToString:[self getButtonTitleState:self.button3]]){
                    [self presentViewController:whoWon animated:YES completion:nil];
    } else if ([[self getButtonTitleState:self.button4] isEqualToString:[self getButtonTitleState:self.button5]]
            && [[self getButtonTitleState:self.button5] isEqualToString:[self getButtonTitleState:self.button6]]) {
                    [self presentViewController:whoWon animated:YES completion:nil];
    } else if ([[self getButtonTitleState:self.button7] isEqualToString:[self getButtonTitleState:self.button8]]
            && [[self getButtonTitleState:self.button8] isEqualToString:[self getButtonTitleState:self.button9]]) {
                    [self presentViewController:whoWon animated:YES completion:nil];
    } else if ([[self getButtonTitleState:self.button1] isEqualToString:[self getButtonTitleState:self.button5]]
            && [[self getButtonTitleState:self.button5] isEqualToString:[self getButtonTitleState:self.button9]]) {
                    [self presentViewController:whoWon animated:YES completion:nil];
    } else if ([[self getButtonTitleState:self.button3] isEqualToString:[self getButtonTitleState:self.button5]]
            && [[self getButtonTitleState:self.button5] isEqualToString:[self getButtonTitleState:self.button7]]) {
                    [self presentViewController:whoWon animated:YES completion:nil];
    } else if ([[self getButtonTitleState:self.button1] isEqualToString:[self getButtonTitleState:self.button4]]
            && [[self getButtonTitleState:self.button4] isEqualToString:[self getButtonTitleState:self.button7]]) {
                    [self presentViewController:whoWon animated:YES completion:nil];
    } else if ([[self getButtonTitleState:self.button2] isEqualToString:[self getButtonTitleState:self.button5]]
            && [[self getButtonTitleState:self.button5] isEqualToString:[self getButtonTitleState:self.button8]]) {
                    [self presentViewController:whoWon animated:YES completion:nil];
    } else if ([[self getButtonTitleState:self.button3] isEqualToString:[self getButtonTitleState:self.button6]]
            && [[self getButtonTitleState:self.button6] isEqualToString:[self getButtonTitleState:self.button9]]) {
                    [self presentViewController:whoWon animated:YES completion:nil];
    } else {
        
    }
    






*/




@end
