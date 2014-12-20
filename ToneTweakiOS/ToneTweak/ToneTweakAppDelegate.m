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
#import "PdAudioController.h"

@implementation ToneTweakAppDelegate

@synthesize window;
@synthesize viewController;

@synthesize audioController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // load our audio controller
    self.audioController = [[[PdAudioController alloc] init] autorelease];
    [self.audioController configureAmbientWithSampleRate:44100 numberChannels:2 mixingEnabled:YES];
    
    // set AppDelegate as PdRecieverDelegate to recieve messages from Libpd
    [PdBase setDelegate:self];
        
    [self openAndRunTestPatch];
    [self.audioController print];
    
    
    return YES;
}
- (void)openAndRunTestPatch {
    // open patch located in app bundle
    void *x = [PdBase openFile:@"tonetweak.pd" path:[[NSBundle mainBundle] bundlePath]];
    [self.audioController setActive:YES];
}

// receivePrint delegate method to receive "print" messages from Libpd
// for simplicity we are just sending print messages to the debugging console
- (void)receivePrint:(NSString *)message {
    NSLog(@"(pd) %@", message);
}

- (void)setAudioActive:(BOOL)active {
    [self.audioController setActive:active];
}

- (void)dealloc {
    [viewController release];
    self.window = nil;
    self.audioController = nil;
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

