//
//  WindowHandler.h
//  Audio Sweet
//
//  Created by Jeffrey Brice on 8/29/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WindowHandler : NSObject <NSApplicationDelegate> {
    IBOutlet NSWindow *mainWindow;
    IBOutlet NSWindow *delayWindow;
    IBOutlet NSWindow *tempoWindow;
    IBOutlet NSWindow *freqWindow;
    IBOutlet NSWindow *cueWindow;
    IBOutlet NSWindow *toggleWindow;
    IBOutlet NSWindow *systemScriptsWindow;
    IBOutlet NSPathControl *pthctUserLibraryPath;
}

@end
