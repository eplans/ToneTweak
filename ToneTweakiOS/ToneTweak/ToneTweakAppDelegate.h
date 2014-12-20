//
//  AppDelegate.h
//  ToneTweak
//
//  Created by Elise Plans on 17/12/2014.
//  Copyright (c) 2014 Elise Plans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PdAudioController.h"
#import "PdBase.h"


@class ToneTweakViewController;
@class PdAudioController;

@interface ToneTweakAppDelegate : UIResponder <UIApplicationDelegate, PdReceiverDelegate> {
    UIWindow *window;
    ToneTweakViewController *viewController;
    PdAudioController *audioController;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) PdAudioController *audioController;
@property (nonatomic, retain) ToneTweakViewController *viewController;

@end

