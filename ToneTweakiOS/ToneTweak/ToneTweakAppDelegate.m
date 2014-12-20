//
//  AppDelegate.m
//  ToneTweak
//
//  Created by Elise Plans on 17/12/2014.
//  Copyright (c) 2014 Elise Plans. All rights reserved.
//

#import "ToneTweakAppDelegate.h"
#import "ToneTweakViewController.h"
#import "PdBase.h"
#import "PdDispatcher.h"

@implementation ToneTweakAppDelegate

@synthesize window;
@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    dispatcher = [[PdDispatcher alloc] init];
    [PdBase setDelegate:dispatcher];
    
    audioController = [[PdAudioController alloc] init];
    [audioController configureAmbientWithSampleRate:44100 numberChannels:2 mixingEnabled:YES];
    [audioController print];

//    [viewController pdSetup];
    
    audioController.active = YES;
    
    self.viewController = [[[ToneTweakViewController alloc] initWithNibName:@"Main" bundle:nil] autorelease];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dealloc {
    [audioController release];
    [PdBase setDelegate:nil];
    [dispatcher release];
    [window release];
    [viewController release];
    [super dealloc];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end

