//
//  AdditionQuestion.h
//  MathGame
//
//  Created by Suvan Ramani on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScoreKeeper.h"
#import <stdlib.h>

@interface AdditionQuestion : NSObject

@property (nonatomic, assign) int number1;
@property (nonatomic, assign) int number2;
@property (nonatomic, strong) NSString *aQuestion;
@property (nonatomic, assign) int realAnswer;
@property (nonatomic, strong) NSString *correctAnswerString;

-(id) init;


@end
