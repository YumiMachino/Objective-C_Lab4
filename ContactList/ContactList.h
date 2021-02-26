//
//  ContactList.h
//  Lab4
//
//  Created by Yumi Machino on 2021/02/25.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property NSMutableArray *contactList;

- (instancetype)init;
-(void)addContact:(Contact *)newContact;
- (void) printContactList;
@end

NS_ASSUME_NONNULL_END
