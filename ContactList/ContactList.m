//
//  ContactList.m
//  Lab4
//
//  Created by Yumi Machino on 2021/02/25.
//

#import "ContactList.h"
#import "Contact.h"

/// internal method
@interface ContactList ()
- (void) noContactMessage;
@end


@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray arrayWithObjects:  nil];
    }
    return self;
}

/// add new contact to the contact list
-(void)addContact:(Contact *)newContact {
    [_contactList addObject: newContact];
}

/// print all the contacts in the contact list
- (void) printContactList {
    [self noContactMessage];
    for (int i = 0; i < [_contactList count]; i++) {
        Contact *contact = [_contactList objectAtIndex: i];
        NSLog(@"\n%ld: <%@> (%@)", (long)[contact Id] ,[contact name], [contact email]);
    }
}

/// check id and print matched contact
- (void) checkIdAndDisplayDetail: (NSString *) Id {
    [self noContactMessage];
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

/// search by keyword, and print matched contact
- (void) searchStringsAndDisplayDetail: (NSString *) searchKeyword {
    [self noContactMessage];
    for (int i = 0; i < [_contactList count]; i++) {
        Contact *contact = [_contactList objectAtIndex: i];
        NSRange range =  [[contact name] rangeOfString: searchKeyword];
        if (i == [_contactList count] - 1 && range.location == NSNotFound) {
            NSLog(@"\nnot found");
        } else if (i == [_contactList count] - 1 && range.location != NSNotFound) {
            NSLog(@"\n%ld: <%@> (%@)", (long)[contact Id] ,[contact name], [contact email]);
        } else if (range.location != NSNotFound) {
            NSLog(@"\n%ld: <%@> (%@)", (long)[contact Id] ,[contact name], [contact email]);
        }
    }
}

- (BOOL) checkDuplicateEntry: (NSString *) emailAddress {
    [self noContactMessage];
    for (int i = 0; i < [_contactList count]; i++) {
        Contact *contact = [_contactList objectAtIndex: i];
        if ([[contact email] isEqualToString: emailAddress]) {
            return TRUE;
        }
    }
    return FALSE;
}


/// check if there are no contacts in the contact list and print message if none
- (void) noContactMessage {
    if ([_contactList count] == 0) {
        NSLog(@"\nNo contacts in the contact list. Please create contact by 'new'.");
    }
}

    
@end
