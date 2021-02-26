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

@property (nonatomic) NSMutableArray *contactList;

- (instancetype)init;
-(void)addContact:(Contact *)newContact;
- (void) printContactList;
- (void) checkIdAndDisplayDetail: (NSString *) Id;
- (void) searchStringsAndDisplayDetail: (NSString *) searchKeyword;
- (BOOL) checkDuplicateEntry: (NSString *) emailAddress;
@end

NS_ASSUME_NONNULL_END
