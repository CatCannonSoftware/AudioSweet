//
//  WindowHandler.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 8/29/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "WindowHandler.h"
#import "PluginToggle.h"

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

-(IBAction)openSystemScripts:(id)sender {
    [mainWindow close];
    [systemScriptsWindow makeKeyAndOrderFront:freqWindow];
}

-(IBAction)openCue:(id)sender {
    [mainWindow close];
    [cueWindow makeKeyAndOrderFront:cueWindow];
}

-(IBAction)openToggle:(id)sender {
    [mainWindow close];
    PluginToggle *pluginInstance = [[PluginToggle alloc] init];
    [pluginInstance setImages];
    NSURL *pathURL = [NSURL fileURLWithPath:[@"~/Library/Audio/Plug-Ins/"stringByExpandingTildeInPath]];
    [pthctUserLibraryPath setURL:pathURL];
    [toggleWindow makeKeyAndOrderFront:toggleWindow];
}
-(IBAction)openSpeedSound:(id)sender {
    [mainWindow close];
    [speedSoundWindow makeKeyAndOrderFront:speedSoundWindow];
}

-(IBAction)openRoomMode:(id)sender {
    [mainWindow close];
    [roomModeWindow makeKeyAndOrderFront:roomModeWindow];
}


-(IBAction)closeDelay:(id)sender {
    [delayWindow close];
    [mainWindow makeKeyAndOrderFront:mainWindow];
}

-(IBAction)closeSystemScripts:(id)sender {
    [systemScriptsWindow close];
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
-(IBAction)closetoggle:(id)sender {
    [toggleWindow close];
    [mainWindow makeKeyAndOrderFront:mainWindow];
}
-(IBAction)closeSpeedSound:(id)sender {
    [cueWindow close];
    [mainWindow makeKeyAndOrderFront:mainWindow];
}
-(IBAction)closeRoomMode:(id)sender {
    [toggleWindow close];
    [mainWindow makeKeyAndOrderFront:mainWindow];
}

@end
