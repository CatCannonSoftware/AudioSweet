//
//  PluginToggle.h
//  Audio Sweet
//
//  Created by Jeffrey Brice on 10/14/15.
//  Copyright (c) 2015 Spacebooke Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PluginToggle : NSObject {
    IBOutlet NSButton *btnToggleAU;
    IBOutlet NSButton *btnToggleVST;
    IBOutlet NSButton *btnToggleAAX;
    IBOutlet NSButton *btnToggleRTAS;
    IBOutlet NSButton *btnToggleTDM;
    IBOutlet NSButton *btnOpenPluginsFolder;
    IBOutlet NSButton *btnOpenUserPluginsFolder;
    IBOutlet NSPathControl *pthctUserLibraryPath;
    IBOutlet NSImageView *auImage;
    IBOutlet NSImageView *vstImage;
    IBOutlet NSImageView *aaxImage;
    IBOutlet NSImageView *rtasImage;
    IBOutlet NSImageView *tdmImage;
}

@property (readwrite, nonatomic) BOOL auIsEnabled;
@property (readwrite, nonatomic) BOOL vstIsEnabled;
@property (readwrite, nonatomic) BOOL aaxIsEnabled;
@property (readwrite, nonatomic) BOOL rtasIsEnabled;
@property (readwrite, nonatomic) BOOL tdmIsEnabled;
@property (nonatomic) NSURL* pathURL;
@property (nonatomic) NSImage *right;
@property (nonatomic) NSImage *wrong;
-(void)setImages;
+(void)setUpDefaultImages;

@end
