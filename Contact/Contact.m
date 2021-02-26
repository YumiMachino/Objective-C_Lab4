//
//  Contact.m
//  Lab4
//
//  Created by Yumi Machino on 2021/02/25.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString*) name AndWith: (NSString*) email;
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _Id = 0;
    }
    return self;
}

@end
