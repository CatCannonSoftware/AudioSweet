//
//  cueCalculator.h
//  Audio Sweet
//
//  Created by Jeffrey Brice on 8/25/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface cueCalculator : NSObject {
    IBOutlet NSTextField *textFieldBPM;
    IBOutlet NSTextField *textFieldBPM2;
    IBOutlet NSTextField *textFieldTime;
    IBOutlet NSTextField *textFieldTime2;
    IBOutlet NSTextField *textFieldFrames;
    IBOutlet NSTextField *textFieldFrames2;
    IBOutlet NSTextField *texttFieldQuarterFrames;
    IBOutlet NSTextField *texttFieldQuarterFrames2;
    IBOutlet NSTextField *textFieldBeats;
    IBOutlet NSTextField *textFieldBeats2;
    IBOutlet NSTextField *labelTime;
    IBOutlet NSTextField *labelBeats;
    IBOutlet NSTextField *labelBPM;
}

@property (nonatomic) double mathBpm;
@property (nonatomic) double beats;
@property (nonatomic) double time;
@property (nonatomic) double frames;
@property (nonatomic) double quarterFrames;
@property (nonatomic) double beatsTimesMinute;
@property (nonatomic) double bpmTimesTime;
@property (nonatomic) double trueTime;
@property (nonatomic) double timeForFrames;
@property (nonatomic) double timeForQuarterFrames;
@property (nonatomic) NSAlert* missingFieldError;

@end
