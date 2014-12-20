//
//  ToneTweakViewController.m
//  ToneTweak
//
//  Created by Elise Plans on 17/12/2014.
//  Copyright (c) 2014 Elise Plans. All rights reserved.
//

#import "ToneTweakViewController.h"

@implementation ToneTweakViewController

-(void)pdSetup {
    PdDispatcher *dispatcher = (PdDispatcher *)[PdBase delegate];
    [PdBase openFile:@"tonetweak.pd" path:[[NSBundle mainBundle] resourcePath]];
}

-(void)viewDidLoad {
    dispatcher = [[PdDispatcher alloc] init];
    [PdBase setDelegate:dispatcher];
    patch = [PdBase openFile:@"ToneTweak.pd" path:[[NSBundle mainBundle] resourcePath]];
    [super viewDidLoad];
}

-(void)dealloc {
    [_MainLabel release];
    [PdBase closeFile:patch];
    [PdBase setDelegate:nil];
    [dispatcher release];
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
