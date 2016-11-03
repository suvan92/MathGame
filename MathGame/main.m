//
//  main.m
//  MathGame
//
//  Created by Suvan Ramani on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *yourScore = [[ScoreKeeper alloc] init];
        
        QuestionManager *sessionQuestions = [[QuestionManager alloc] init];
        
        QuestionFactory *questionTypeSelector = [[QuestionFactory alloc] init];

        while (YES) {
            
            Question *question = [questionTypeSelector generateRandomQuestion];
            
            [sessionQuestions.questions addObject:question];
            
            InputHandler *userInput = [[InputHandler alloc] init];
            
            NSString *answerString = [userInput parsedInput];
            
            if ([answerString isEqualToString:@"quit"]) {
                
                NSLog(@"Score: %d correct, %d wrong", yourScore.correct, yourScore.wrong);
                NSLog(@"%@", [sessionQuestions timeOutput]);
                
                break;
            }
            
            if ([question.correctAnswerString isEqualToString:answerString]) {
                
                NSLog(@"Correct!");
                [yourScore gotOneRight];
                
                NSLog(@"Score: %d correct, %d wrong", yourScore.correct, yourScore.wrong);
                NSLog(@"%@", [sessionQuestions timeOutput]);
                
            } else if ([question.correctAnswerString isNotEqualTo:answerString]) {
                
                NSLog(@"Wrong :(");
                [yourScore gotOneWrong];
                
                NSLog(@"Score: %d correct, %d wrong", yourScore.correct, yourScore.wrong);
                NSLog(@"%@", [sessionQuestions timeOutput]);
                
            }
                
            }
            
        
    }
    return 0;
}
