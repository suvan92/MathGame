//
//  Question.h
//  MathGame
//
//  Created by Ali Dahesh on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScoreKeeper.h"
#import <stdlib.h>

@interface Question : NSObject


@property (nonatomic, copy) NSString *aQuestion;
@property (nonatomic) NSInteger realAnswer;
@property (nonatomic, copy) NSString *correctAnswerString;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

@property (nonatomic, assign) NSInteger rightValue;
@property (nonatomic, assign) NSInteger leftValue;

-(NSTimeInterval) answerTime;

-(void) generateQuestion;


@end
