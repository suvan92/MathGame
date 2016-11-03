//
//  QuestionFactory.h
//  MathGame
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import <stdlib.h>

@interface QuestionFactory : NSObject


-(instancetype) init;
-(Question *)generateRandomQuestion;

@end
