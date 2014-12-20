//
//  ToneTweakViewController.h
//  ToneTweak
//
//  Created by Elise Plans on 17/12/2014.
//  Copyright (c) 2014 Elise Plans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PdDispatcher.h"

@interface ToneTweakViewController : UIViewController {
    PdDispatcher *dispatcher;
    void *patch;
}
-(void)pdSetup;

@property (retain, nonatomic) IBOutlet UILabel *MainLabel;


@end