//
//  AppDelegate.h
//  ToneTweak
//
//  Created by Elise Plans on 17/12/2014.
//  Copyright (c) 2014 Elise Plans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PdAudioController.h"
#import "PdDispatcher.h"

@class ToneTweakViewController;

@interface ToneTweakAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ToneTweakViewController *viewController;
    
    PdAudioController *audioController;
    PdDispatcher *dispatcher;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ToneTweakViewController *viewController;

@end

