//
//  QuestionManager.h
//  MathGame
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;

-(id)init;

-(NSString *)timeOutput;

@end
