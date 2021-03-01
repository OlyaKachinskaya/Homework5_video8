//
//  Student.m
//  Students
//
//  Created by Оля Качинская on 01.03.2021.
//

#import "Student.h"

@implementation Student

@synthesize Name, LastName, Greeting;

- (NSString *)FullName{
    NSString *fullName = [NSString stringWithFormat:@"%@ %@", [self Name], [self LastName]];
    return fullName;
}
- (void) SetUpStudent:(NSString *)name :(NSString *)lastname :(NSString *)hello{
    [self setName:name];
    [self setLastName:lastname];
    [self setGreeting:hello];
}

@end
