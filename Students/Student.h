//
//  Student.h
//  Students
//
//  Created by Оля Качинская on 01.03.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic) NSString *Name, *LastName, *Greeting;

- (NSString *)FullName;

- (void)SetUpStudent:(NSString *)name :(NSString *)lastname : (NSString *)hello;

@end

NS_ASSUME_NONNULL_END
