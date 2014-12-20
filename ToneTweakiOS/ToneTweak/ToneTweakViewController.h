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

- (IBAction)gButton:(id)sender;

- (IBAction)dButton:(id)sender;

- (IBAction)aButton:(id)sender;

- (IBAction)eButton:(id)sender;

- (IBAction)killButton:(id)sender;

@end