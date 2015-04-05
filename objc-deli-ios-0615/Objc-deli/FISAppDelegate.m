//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSMutableArray *)takeANumberWithDeliLine: (NSMutableArray *)deliLine Name: (NSString *)customer
{
    [deliLine addObject: customer];
    
    NSLog (@" Next served: %lu ", [deliLine count]);
    
    return deliLine;
    
}

- (NSMutableArray *)nowServingWithDeliLine: (NSMutableArray *)deliLine
{
    if ([deliLine count] > 0) {
        [deliLine removeObjectAtIndex: 0];
        if ([deliLine count] > 0) {
            NSLog(@"Now Serving: %@ ", [deliLine objectAtIndex: 0]);
        } else {
            NSLog(@"There is nobody waiting to be served!");
        }
}
    return deliLine;

}

- (NSString *)deliLine: (NSMutableArray *)deliLine
    {
        if ([deliLine count] > 0) {
        
            NSMutableString *currentCustomers = [[NSMutableString alloc] init];
            [deliLine enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
             {
                 [currentCustomers appendString:[NSString stringWithFormat:@" %lu. %@", idx + 1, obj]];
                 
            }];
            return [NSString stringWithFormat: @"The line is currently:%@", currentCustomers];
                
        } else {
            return @"The line is empty";
        }
    }
//- (void)applicationWillResignActive:(UIApplication *)application
//{
//    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
//    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
//}
//
//- (void)applicationDidEnterBackground:(UIApplication *)application
//{
//    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
//    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
//}
//
//- (void)applicationWillEnterForeground:(UIApplication *)application
//{
//    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
//}
//
//- (void)applicationDidBecomeActive:(UIApplication *)application
//{
//    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
//}
//
//- (void)applicationWillTerminate:(UIApplication *)application
//{
//    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
//}

@end
