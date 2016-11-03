//
//  QuestionFactory.m
//  MathGame
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "QuestionFactory.h"

@interface QuestionFactory ()

@property (nonatomic, strong) NSArray *questionSubclassNames;

@end

@implementation QuestionFactory

-(int)rndVal {
    int lowerBound = 0;
    int upperBound = 3;
    
    int randomNumber = lowerBound + arc4random() % (upperBound - lowerBound);
    
    return randomNumber;
}



-(instancetype) init{
    
    self = [super init];
    
    if (self) {
        
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
        
    }
    
    return self;
}

-(Question *)generateRandomQuestion {
    
    NSString *typeOfQuestion = [self.questionSubclassNames objectAtIndex:[self rndVal]];
    
    return [[NSClassFromString(typeOfQuestion) alloc] init];
    
}


@end
