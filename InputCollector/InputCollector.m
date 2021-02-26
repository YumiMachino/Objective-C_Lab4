//
//  InputCollector.m
//  Lab4
//
//  Created by Yumi Machino on 2021/02/25.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)initWithPrompt: (NSString *) prompt;
{
    self = [super init];
    if (self) {
        _prompt = prompt;
    }
    return self;
}


/// Print prompt, and return user input after the prompt
-(NSString *)inputForPrompt:(NSString *)promptString {
    char userInput[256];
    
    NSLog(@"%@", promptString);
    fgets(userInput, 256, stdin);
    NSString *result = [NSString stringWithCString:userInput
                                         encoding:NSUTF8StringEncoding];
    
    NSString *trimmed_result = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmed_result;
    
}
@end
