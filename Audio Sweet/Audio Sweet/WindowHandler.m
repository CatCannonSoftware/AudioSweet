//
//  WindowHandler.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 8/29/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "WindowHandler.h"

@implementation WindowHandler

-(IBAction)openDelay:(id)sender {
    [mainWindow close];
    [delayWindow makeKeyAndOrderFront:delayWindow];
}

-(IBAction)openTempo:(id)sender {
    [mainWindow close];
    [tempoWindow makeKeyAndOrderFront:tempoWindow];
}

-(IBAction)openFreq:(id)sender {
    [mainWindow close];
    [freqWindow makeKeyAndOrderFront:freqWindow];
}

-(IBAction)openCue:(id)sender {
    [mainWindow close];
    [cueWindow makeKeyAndOrderFront:cueWindow];
}

-(IBAction)closeDelay:(id)sender {
    [delayWindow close];
    [mainWindow makeKeyAndOrderFront:mainWindow];
}

-(IBAction)closeTempo:(id)sender {
    [tempoWindow close];
    [mainWindow makeKeyAndOrderFront:mainWindow];
}

-(IBAction)closeFreq:(id)sender {
    [freqWindow close];
    [mainWindow makeKeyAndOrderFront:mainWindow];
}

-(IBAction)closeCue:(id)sender {
    [cueWindow close];
    [mainWindow makeKeyAndOrderFront:mainWindow];
}

@end
