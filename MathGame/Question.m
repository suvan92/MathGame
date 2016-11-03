//
//  AdditionQuestion.m
//  MathGame
//
//  Created by Ali Dahesh on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "Question.h"

@implementation Question

-(int)randomValue {
    int lowerBound = 10;
    int upperBound = 100;
    
    int randomNumber = lowerBound + arc4random() % (upperBound - lowerBound);
    
    return randomNumber;
}

- (NSString *)correctAnswerString {
    
    _endTime = [NSDate date];
    
    return _correctAnswerString;
}

-(id) init {
    
    self = [super init];
    
    if (self) {
        
        _rightValue = [self randomValue];
        _leftValue = [self randomValue];
        
        _correctAnswerString = [NSString stringWithFormat:@"%ld", (long)_realAnswer];
        
        _startTime = [NSDate date];
        
        
    }
    
    return self;
}

-(NSTimeInterval) answerTime {
    
    NSTimeInterval answerTime = [self.endTime timeIntervalSinceDate:self.startTime];
    
    return answerTime;
}

-(void) generateQuestion {
    
}




@end
