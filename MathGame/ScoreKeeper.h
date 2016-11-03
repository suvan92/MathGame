//
//  ScoreKeeper.h
//  MathGame
//
//  Created by Ali Dahesh on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) int correct;
@property (nonatomic, assign) int wrong;

-(void)gotOneRight;
-(void)gotOneWrong;


@end
