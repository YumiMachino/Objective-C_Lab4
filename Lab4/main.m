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
        
        NSString *promptMessage = @"\nThe menu:\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n>";
        
        InputCollector *inputCollector = [[InputCollector alloc] initWithPrompt:promptMessage];
        
        ContactList *contactList = [ContactList new];
      
        [contactList printContactList];
        
        while (TRUE) {
                      
            NSString *response = [inputCollector inputForPrompt: [inputCollector prompt]];
            
            if ([response isEqualToString:@"new"]){
                /// get full name
                NSString *fullName = [inputCollector inputForPrompt:@"\nEnter full name: "];
                NSLog(@"name: %@", fullName);
                /// get email
                NSString *emailAddress = [inputCollector inputForPrompt:@"\nEnter email address: "];
                NSLog(@"address: %@", emailAddress);
                
                Contact *contact1 = [[Contact alloc]initWithName:fullName AndWith:emailAddress];
                
                /// add new contact to contact list
                [contactList addContact:contact1];
                /// assign ID
                [contact1 setId: idCount];
                idCount++;
  
                NSLog(@"Name: %@, Email address: %@ has been added to the contact list.", [contact1 name], [contact1 email]);
       
            } else if ([response isEqualToString:@"list"]) {
                /// print all the contact
                [contactList printContactList];
                
            } else if ([response isEqualToString:@"quit"]) {
                NSLog(@"Bye!");
                break;
            }
            
         
            
          
        }
       
    }
    return 0;
}
