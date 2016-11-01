//
//  main.m
//  MathGame
//
//  Created by Suvan Ramani on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *yourScore = [[ScoreKeeper alloc] init];
        
        while (YES) {
            
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            
            NSLog(@"%@", question.aQuestion);
            
            InputHandler *userInput = [[InputHandler alloc] init];
            
            NSString *answerString = [userInput parsedInput];
            
            if ([answerString isEqualToString:@"quit"]) {
                
                NSLog(@"Your got %d correct, and %d wrong", yourScore.correct, yourScore.wrong);
                
                break;
            }
            
            if ([question.correctAnswerString isEqualToString:answerString]) {
                
                NSLog(@"Correct!");
                [yourScore gotOneRight];
                
            } else {
                
                NSLog(@"Wrong :(");
                [yourScore gotOneWrong];
                
            }
            
        }
        
    }
    return 0;
}
