//
//  AppDelegate.m
//  Students
//
//  Created by Оля Качинская on 01.03.2021.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Student *firstStud = [[Student alloc] init];
    Student *secondStud = [[Student alloc] init];
    Student *thirdStud = [[Student alloc] init];
    Student *fourthStud = [[Student alloc] init];
    Student *fifthStud = [[Student alloc] init];
    
    [firstStud SetUpStudent:@"Mia" :@"Yang" :@"Hi! I'm Mia!"];
    [secondStud SetUpStudent:@"Joanna" :@"Smith" :@"Hi! I'm Joanna!"];
    [thirdStud SetUpStudent:@"Peter" :@"White" :@"Hi! I'm Peter!"];
    [fourthStud SetUpStudent:@"Melody" :@"Clark" :@"Hi! I'm Melody!"];
    [fifthStud SetUpStudent:@"Marty" :@"Wood" :@"Hi! I'm Marty!"];

    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                firstStud,[firstStud FullName],
                                secondStud, [secondStud FullName],
                                thirdStud, [thirdStud FullName],
                                fourthStud, [fourthStud FullName],
                                fifthStud, [fifthStud FullName],
                                nil];
    NSLog(@"%@", dictionary);
    
    //студент
    for (NSString *key in [dictionary allKeys]){
        id obj = [dictionary objectForKey:key];
        NSLog(@"Student name is %@\nLast Name is %@\nGreeting phrase is '%@'", [obj Name], [obj LastName], [obj Greeting]);
    }
    
    //мастер
    NSArray *keys = [dictionary allKeys];
    NSArray *sortedKeys = [keys sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];
    }];
    NSLog(@"%@", sortedKeys);
    
    for (NSString *key in sortedKeys){
        id obj = [dictionary objectForKey:key];
        NSLog(@"Greeting phrase is '%@'", [obj Greeting]);
    }



    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
