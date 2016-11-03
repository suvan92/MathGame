//
//  QuestionManager.h
//  MathGame
//
//  Created by Ali Dahesh on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;

-(id)init;

-(NSString *)timeOutput;

@end
