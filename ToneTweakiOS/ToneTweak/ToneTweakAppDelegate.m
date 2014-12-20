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

@synthesize audioController = _audioController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _audioController = [[PdAudioController alloc] init];
    if ([self.audioController configureAmbientWithSampleRate:44100 numberChannels:2 mixingEnabled:YES] != PdAudioOK) {
        // TODO: handle this!
        NSLog(@"biobeatsAudioEngineController: failed to initialize audio components");
    }
    if ((self.audioController.active = YES)) {
        NSLog(@"biobeatsAudioEngineController: audio controller activated");
    } else
    {
        NSLog(@"biobeatsAudioEngineController: audio controller NOT activated");
    }
    
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    
//    UIViewController *mainViewController = [storyboard instantiateInitialViewController];
//    
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    self.window.rootViewController = mainViewController;
//    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dealloc {
    [_audioController release];
    [PdBase setDelegate:nil];
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

