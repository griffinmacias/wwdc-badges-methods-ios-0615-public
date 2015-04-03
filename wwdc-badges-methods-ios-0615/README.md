---
  tags: arrays, iteration, methods, todo
  languages: objc
---

# Badges and Schedules

## Instructions

In this lab you'll be using methods to iterate through an array and return output in different ways.
This time we'll be working below the following method in `FISAppDelegate`.

```objc
-(BOOL)application:(UIApplication *)application
  didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
```

Background: You're helping out at the [Apple Worldwide Developers Conference](https://developer.apple.com/wwdc/) conference and need to print badges for the speakers. Each badge should say: "Hello, my name is _____." The list of speakers for your conference has been finalized. Your conference speakers are: `@"Edsger", @"Ada", @"Charles", @"Alan", @"Grace", @"Linus" and @"Wozniak".` How you scored these luminaries is beyond me, but way to go! Now you'll want to get their badges printed. 

  1. In `FISAppDelegate.h`, declare three methods:

    ```objc
    -(NSString *)badgeMaker:(NSString *)attendee;
    -(NSArray *)batchBadgeCreator:(NSArray *)attendees;
    -(NSArray *)assignRooms:(NSArray *)attendees;
    ``` 
  2. Define these 3 methods in `FISAppDelegate.m`, under
     `application:didFinishLaunchingWithOptions`.
     1. For the `badgeMaker` method, take a parameter `attendee` and return an `NSString` that says "Hello, my name is ___.".
     2. For the `batchBadgeMaker` method, take a parameter `attendees` and
        return an array of speaker badges, each of which will say "Hello, my
        name is ___."
     3. For the `assignRooms` method, take a parameter `attendees` and return
        an array of very polite room assignments, each of which will say
        "Hello, ___! You'll be assigned to room ___!", where room ___ is a
        number from 1-7, in the order that the names appear in the array. 

  3. Have fun and make the tests pass... they want you to succeed, so pay attention to what they're
     telling you when they fail :) 
