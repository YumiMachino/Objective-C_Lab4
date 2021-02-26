//
//  main.m
//  Lab4
//
//  Created by Yumi Machino on 2021/02/25.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger idCount = 0;
        
        NSString *promptMessage = @"\n-------------------\nThe menu:\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - display detail by contact id\nfind - find a contact by name or email address\nquit - Exit Application\n-------------------\n>";
        
        InputCollector *inputCollector = [[InputCollector alloc] initWithPrompt:promptMessage];
        
        ContactList *contactList = [ContactList new];
      
        [contactList printContactList];
        
        while (TRUE) {
                      
            NSString *response = [inputCollector inputForPrompt: [inputCollector prompt]];
            
            if ([response isEqualToString:@"new"]){
                
                /// get email
                NSString *emailAddress = [inputCollector inputForPrompt:@"\nEnter email address: "];
                /// check duplicate here
                if ([contactList checkDuplicateEntry:emailAddress] == TRUE) {
                    NSLog(@"\nThere is already a contact with the same email address. Please create a new one!");
                    break;
                }
                /// get full name
                NSString *fullName = [inputCollector inputForPrompt:@"\nEnter full name: "];

                Contact *contact1 = [[Contact alloc]initWithName:fullName AndWith:emailAddress];
                
                /// add new contact to contact list
                [contactList addContact:contact1];
                /// assign ID
                [contact1 setId: idCount];
                idCount++;
  
                NSLog(@"\n-------\nName: %@, Email address: %@ has been added to the contact list.\n-------", [contact1 name], [contact1 email]);
       
            } else if ([response isEqualToString:@"list"]) {
                /// print all the contact
                [contactList printContactList];
                
            } else if ([response isEqualToString:@"show"]){
                NSString *inputId = [inputCollector inputForPrompt:@"\n-------\nEnter a contact id : "];
                [contactList checkIdAndDisplayDetail:inputId];
                
            } else if ([response isEqualToString:@"find"]) {
                NSString *inputKeyword = [inputCollector inputForPrompt:@"\n-------\nEnter a contact name or email address : "];
                [contactList searchStringsAndDisplayDetail:inputKeyword];
            }
            else if ([response isEqualToString:@"quit"]) {
                NSLog(@"Bye!");
                break;
            }
        }
       
    }
    return 0;
}
