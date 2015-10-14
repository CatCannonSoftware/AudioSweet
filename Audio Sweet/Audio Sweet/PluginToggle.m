//
//  PluginToggle.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 10/14/15.
//  Copyright (c) 2015 Spacebooke Games. All rights reserved.
//

#import "PluginToggle.h"
#import "WindowHandler.h"

@implementation PluginToggle

@synthesize pathURL, right, wrong;

-(void)setImages {
    NSString *rightPath = @"right.png";
    NSString *wrongPath = @"wrong.png";
    right = [NSImage imageNamed:rightPath];
    wrong = [NSImage imageNamed:wrongPath];
}

-(void)setUpDefaultImages {
    [self setImages];
    if (_auIsEnabled == true) {
        [auImage setImage:right];
    }
    else {
        [auImage setImage:wrong];
    }
    if (_vstIsEnabled == true) {
        [vstImage setImage:right];
    }
    else {
        [vstImage setImage:wrong];
    }
    if (_rtasIsEnabled == true) {
        [rtasImage setImage:right];
    }
    else {
        [rtasImage setImage:wrong];
    }
    if (_tdmIsEnabled == true) {
        [tdmImage setImage:right];
    }
    else {
        [tdmImage setImage:wrong];
    }
    if (_aaxIsEnabled == true) {
        [aaxImage setImage:right];
    }
    else {
        [aaxImage setImage:wrong];
    }
    
}

-(IBAction)toggleAU:(id)sender {
    // Terminal Script
    [self setImages];
    NSAlert *alert = [[NSAlert alloc] init];
    if (_auIsEnabled) {
        [alert setMessageText:@"Audio Units have been disabled!"];
        _auIsEnabled = false;
        [auImage setImage:wrong];
    }
    else {
        [alert setMessageText:@"Audio Units have been enabled!"];
        _auIsEnabled = true;
        [auImage setImage:right];
    }
    [alert runModal];
}

-(IBAction)toggleVST:(id)sender {
    // Terminal Script
    [self setImages];

    NSAlert *alert = [[NSAlert alloc] init];
    if (_vstIsEnabled) {
        [alert setMessageText:@"VST plugins have been disabled!"];
        _vstIsEnabled = false;
        [vstImage setImage:wrong];

    }
    else {
        [alert setMessageText:@"VST plugins have been enabled!"];
        _vstIsEnabled = true;
        [vstImage setImage:right];

    }
    [alert runModal];
}

-(IBAction)toggleAAX:(id)sender {
    // Terminal Script
    [self setImages];

    NSAlert *alert = [[NSAlert alloc] init];
    if (_aaxIsEnabled) {
        [alert setMessageText:@"AAX plugins have been disabled!"];
        _aaxIsEnabled = false;
        [aaxImage setImage:wrong];
        

    }
    else {
        [alert setMessageText:@"AAX plugins have been enabled!"];
        _aaxIsEnabled = true;
        [aaxImage setImage:right];

    }
    [alert runModal];
}

-(IBAction)toggleRTAS:(id)sender {
    // Terminal Script
    [self setImages];

    NSAlert *alert = [[NSAlert alloc] init];
    if (_rtasIsEnabled) {
        [alert setMessageText:@"RTAS plugins have been disabled!" ];
        _rtasIsEnabled = false;
        [rtasImage setImage:wrong];

    }
    else {
        [alert setMessageText:@"RTAS plugins have been enabled!" ];
        _rtasIsEnabled = true;
        [rtasImage setImage:right];

    }
    [alert runModal];
}

-(IBAction)toggleTDM:(id)sender {
    // Terminal Script
    [self setImages];

    NSAlert *alert = [[NSAlert alloc] init];
    if (_tdmIsEnabled) {
        [alert setMessageText:@"TDM plugins have been disabled!"];
        _tdmIsEnabled = false;
        [tdmImage setImage:wrong];

    }
    else {
        [alert setMessageText:@"TDM plugins have been enabled!"];
        _tdmIsEnabled = true;
        [tdmImage setImage:right];

    }
    [alert runModal];
}

-(IBAction)openPluginsFolder:(id)sender {
    // Open Plugins Folder
    NSURL *folderURL = [NSURL fileURLWithPath: @"/Library/Audio/Plug-Ins/"];
    [[NSWorkspace sharedWorkspace] openURL: folderURL];
}

-(IBAction)openUserPluginsFolder:(id)sender {
    // Open User Plugins Folder
    NSURL *pathURL = [NSURL fileURLWithPath:[@"~/Library/Audio/Plug-Ins/"stringByExpandingTildeInPath]];
    [[NSWorkspace sharedWorkspace] openURL: pathURL];
}

@end
