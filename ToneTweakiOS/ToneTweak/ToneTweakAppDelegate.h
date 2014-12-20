//
//  AppDelegate.h
//  ToneTweak
//
//  Created by Elise Plans on 17/12/2014.
//  Copyright (c) 2014 Elise Plans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PdAudioController.h"


@class ToneTweakViewController;

@interface ToneTweakAppDelegate : UIResponder <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) PdAudioController *audioController;
@property (nonatomic, retain) ToneTweakViewController *viewController;

@end

