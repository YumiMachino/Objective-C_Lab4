//
//  ContactList.m
//  Lab4
//
//  Created by Yumi Machino on 2021/02/25.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray arrayWithObjects:  nil];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [_contactList addObject: newContact];
}

- (void) printContactList {
    for (int i = 0; i < [_contactList count]; i++) {
        Contact *contact = [_contactList objectAtIndex: i];
        NSLog(@"%ld: <%@> (%@)", (long)[contact Id] ,[contact name], [contact email]);
    }
}


@end
