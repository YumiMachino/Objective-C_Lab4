//
//  InputCollector.h
//  Lab4
//
//  Created by Yumi Machino on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

@property NSString* prompt;

- (instancetype)initWithPrompt: (NSString *) prompt;
-(NSString *)inputForPrompt:(NSString *)promptString;

@end

NS_ASSUME_NONNULL_END
