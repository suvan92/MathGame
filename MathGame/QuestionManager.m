//
//  QuestionManager.m
//  MathGame
//
//  Created by Ali Dahesh on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

-(id)init {
    
    self = [super init];
    
    if (self) {
        
        _questions = [[NSMutableArray alloc] init];
        
    }
    
    return self;
}


-(NSString *)timeOutput {
    
    NSTimeInterval totalTime;
    
    for (int i = 0; i < self.questions.count; i++) {
        
        Question *currentQuestion = [self.questions objectAtIndex:i];
        
        totalTime += currentQuestion.answerTime;
    }
    
    NSTimeInterval averageTime = totalTime / self.questions.count;
    
    NSString *timeOutput = [NSString stringWithFormat: @"Total time: %.2f s, average time: %.2f s", totalTime, averageTime];
    
    return timeOutput;
}

@end
