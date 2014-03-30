//
//  AppDelegate.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/11/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

-(IBAction)launchAppStore:(id)sender{
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:
                                            @"macappstore://itunes.apple.com/us/app/audio-sweet/id795972884?mt=12&uo=4"]];
}

@end
