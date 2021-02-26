//
//  Contact.h
//  Lab4
//
//  Created by Yumi Machino on 2021/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic)  NSInteger Id;
@property (nonatomic)  NSString* name;
@property (nonatomic) NSString* email;

- (instancetype)initWithName:(NSString*) name AndWith: (NSString*) email;

@end

NS_ASSUME_NONNULL_END
