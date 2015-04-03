//
//  FISAppDelegateSpec.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright 2014 FIS. All rights reserved.
//

#import "Specta.h"
#import "FISAppDelegate.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(FISAppDelegate)

describe(@"FISAppDelegate", ^{
    __block FISAppDelegate *appDelegate;
    __block NSArray *attendees;
    
    beforeAll(^{
        appDelegate = [[FISAppDelegate alloc] init];
        attendees = @[@"Edsger", @"Ada", @"Charles", @"Alan", @"Grace", @"Linus", @"Wozniak"];
    });
    
    describe(@"badgeMaker", ^{
        it(@"should return a formatted badge", ^{
            expect([appDelegate badgeMaker:@"Herbert"]).to.equal(@"Hello, my name is Herbert.");
        });
    });
    
    describe(@"batchBadgeCreator", ^{
        it(@"should return a list of badge messages",^{
            expect([appDelegate batchBadgeCreator:attendees]).to.equal(@[@"Hello, my name is Edsger.",
                                                                         @"Hello, my name is Ada.",
                                                                         @"Hello, my name is Charles.",
                                                                         @"Hello, my name is Alan.",
                                                                         @"Hello, my name is Grace.",
                                                                         @"Hello, my name is Linus.",
                                                                         @"Hello, my name is Wozniak."
                                                                         ]);
        });
    });
    
    describe(@"assignRooms", ^{
        it(@"should return a list of welcome messages and room assignments",^{
            expect([appDelegate assignRooms:attendees]).to.equal(@[@"Hello, Edsger! You'll be assigned to room 1!",
                                                                   @"Hello, Ada! You'll be assigned to room 2!",
                                                                   @"Hello, Charles! You'll be assigned to room 3!",
                                                                   @"Hello, Alan! You'll be assigned to room 4!",
                                                                   @"Hello, Grace! You'll be assigned to room 5!",
                                                                   @"Hello, Linus! You'll be assigned to room 6!",
                                                                   @"Hello, Wozniak! You'll be assigned to room 7!"]);
        });
    });
    
});

SpecEnd
