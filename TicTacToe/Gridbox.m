//
//  Gridbox.m
//  TicTacToe
//
//  Created by Sam on 3/18/16.
//  Copyright © 2016 Sam Willsea. All rights reserved.
//

#import "Gridbox.h"

@implementation Gridbox

//call custom initializer by default
- (id)init
{
    return [self initWithX:0 andY:0 andValue:nil];
}

//create custom initializer for class

- (id)initWithX:(int)inPosX andY:(int)inPosY andValue:(NSString *)hasValue
{
    self = [super init];
    if(self) {
        NSLog(@"_init: %@", self);
        _posX = inPosX;
        _posY = inPosY;
        _value = hasValue;
    }
    return self;
}




@end
