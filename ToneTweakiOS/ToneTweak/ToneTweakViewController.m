//
//  ToneTweakViewController.m
//  ToneTweak
//
//  Created by Elise Plans on 17/12/2014.
//  Copyright (c) 2014 Elise Plans. All rights reserved.
//

#import "ToneTweakViewController.h"
#import "PdBase.h"

@implementation ToneTweakViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

-(void)dealloc {
    [_MainLabel release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)gButton:(id)sender {
     [PdBase sendBangToReceiver:@"G"];
}

- (IBAction)dButton:(id)sender {
    [PdBase sendBangToReceiver:@"D"];
}

- (IBAction)aButton:(id)sender {
    [PdBase sendBangToReceiver:@"A"];
}

- (IBAction)eButton:(id)sender {
    [PdBase sendBangToReceiver:@"E"];
}

- (IBAction)killButton:(id)sender {
    [PdBase sendBangToReceiver:@"kill"];
}

// Omitting the remaining controller methods @end


@end
