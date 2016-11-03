//
//  ScoreKeeper.m
//  MathGame
//
//  Created by Ali Dahesh on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(id)init {
    self = [super init];
    
    _correct = 0;
    _wrong = 0;
    
    return self;
}

-(void)gotOneRight {
    self.correct += 1;
}

-(void)gotOneWrong {
    self.wrong += 1;
}



@end
