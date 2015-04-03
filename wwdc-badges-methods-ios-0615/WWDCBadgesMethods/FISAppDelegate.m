//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}

//define methods here
-(NSString *)badgeMaker:(NSString *)attendee

{
    
    
    
    return [NSString stringWithFormat: @"Hello, my name is %@.", attendee];
    
}



-(NSArray *)batchBadgeCreator:(NSArray *)attendees

{
    
    NSMutableArray *speakerBadges = [[NSMutableArray alloc] init];
    
    for (NSString *speaker in attendees) {
        
        NSString *badge = [self badgeMaker:speaker];
        
        [speakerBadges addObject:badge];
        
    }
    
    return speakerBadges;
    
}



-(NSArray *)assignRooms:(NSArray *)attendees

{
    
    NSMutableArray *welcomeMessages = [[NSMutableArray alloc] init];
    
    for (int count = 0; count < [attendees count]; count++) {
        
        [welcomeMessages addObject:[NSString stringWithFormat:@"Hello, %@! You'll be assigned to room %i!", attendees [count], count+1]];
        
        
        
    }
    
    return welcomeMessages;
    
}



@end
