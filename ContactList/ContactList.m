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
        NSLog(@"\n%ld: <%@> (%@)", (long)[contact Id] ,[contact name], [contact email]);
    }
}

- (void) checkIdAndDisplayDetail: (NSString *) Id {
    
    NSInteger intId = [Id intValue];
    for (int i = 0; i < [_contactList count]; i++) {
        Contact *contact = [_contactList objectAtIndex: i];
        if (i == [_contactList count] - 1 && intId == [contact Id] ) {
            NSLog(@"\n%ld: <%@> (%@)", (long)[contact Id] ,[contact name], [contact email]);
        } else if ((i == [_contactList count] - 1 && intId != [contact Id] )) {
            NSLog(@"\nnot found");
        } else if (intId == [contact Id]) {
            NSLog(@"\n%ld: <%@> (%@)", (long)[contact Id] ,[contact name], [contact email]);
            break;
        } else {
            continue;
        }
    }
}
    
@end
