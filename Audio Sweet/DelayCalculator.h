//
//  DelayCalculator.h
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/13/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DelayCalculator : NSObject {
    IBOutlet NSTextField *tempoTextBox;
    IBOutlet NSTextField *calcResult;
    IBOutlet NSTextField *calcResult3;
    IBOutlet NSTextField *calcResult5;
    IBOutlet NSTextField *calcResultDot;
    IBOutlet NSSegmentedControl  *noteValues;
    IBOutlet NSImageView *regularNote;
}

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic) double tempo;
@property (nonatomic) double ms;
@property (nonatomic) double msTriple;
@property (nonatomic) double msFifth;
@property (nonatomic) double msDot;
@property (nonatomic) double tripleVal;
@property (nonatomic) double fiveVal;
@property (nonatomic) NSImage *blank;
@property (nonatomic) NSImage *whole;
@property (nonatomic) NSImage *half;
@property (nonatomic) NSImage *quarter;
@property (nonatomic) NSImage *eighth;
@property (nonatomic) NSImage *sixteenth;
@property (nonatomic) NSImage *thirtySecond;
@property (nonatomic) NSImage *sixtyFourth;

@end
