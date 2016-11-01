//
//  InputHandler.m
//  MathGame
//
//  Created by Suvan Ramani on 2016-11-01.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString*)parsedInput {
    
    char answer[255];
    
    // get the user's answer
    fgets(answer, 255, stdin);
    
    // convert the user Cstring answer into an NSString
    NSString *answerString = [NSString stringWithCString:answer encoding:NSUTF8StringEncoding];
    
    // remove line break character from answerString
    answerString = [answerString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    return answerString;
}

@end
