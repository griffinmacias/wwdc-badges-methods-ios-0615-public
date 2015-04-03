//
//  FISAppDelegate.h
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//declare methods here:

-(NSString *)badgeMaker:(NSString *)attendee;
-(NSArray *)batchBadgeCreator:(NSArray *)attendees;
-(NSArray *)assignRooms:(NSArray *)attendees;

@end
