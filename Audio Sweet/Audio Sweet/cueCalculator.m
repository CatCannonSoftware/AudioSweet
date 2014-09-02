//
//  cueCalculator.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 8/25/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "cueCalculator.h"

@implementation cueCalculator

@synthesize beats, mathBpm, beatsTimesMinute, bpmTimesTime, time, frames, quarterFrames, trueTime, timeForFrames, timeForQuarterFrames;

-(IBAction)calculateTime:(id)sender {
    beats = [textFieldBeats.stringValue doubleValue];
    mathBpm = [textFieldBPM.stringValue doubleValue];
    
    beatsTimesMinute = ((beats) * 60);
    time = (beatsTimesMinute / mathBpm);
    
    timeForFrames = (time - trunc(time));
    frames = (timeForFrames * 24);
    
    timeForQuarterFrames = (frames - trunc(frames));
    quarterFrames = (timeForQuarterFrames * 4);
    
    NSLog(@"%.f, %.f, %.f", time, frames, quarterFrames);
    NSLog(@"%.f, %.f", timeForFrames, timeForQuarterFrames);

    NSString *stringFloatTime = [[NSString alloc] initWithFormat: @"%.0f sec:%.0f fr;%.0f qf", trunc(time), trunc(frames), trunc(quarterFrames)];
    labelTime.stringValue = stringFloatTime;
}

-(IBAction)calculateBeats:(id)sender {
    mathBpm = [textFieldBPM2.stringValue doubleValue];
    frames = [textFieldFrames.stringValue doubleValue];
    quarterFrames = [texttFieldQuarterFrames.stringValue doubleValue];
    time = [textFieldTime.stringValue doubleValue];

    trueTime = (time + (frames / 24) + (quarterFrames / 96));
    
    bpmTimesTime = (mathBpm * trueTime);
    beats = (bpmTimesTime / 60);
    NSString *stringFloatBeats = [[NSString alloc] initWithFormat: @"%3f", beats];
    labelBeats.stringValue = stringFloatBeats;
}

-(IBAction)calculateTempo:(id)sender {
    beats = [textFieldBeats2.stringValue doubleValue];
    frames = [textFieldFrames2.stringValue doubleValue];
    quarterFrames = [texttFieldQuarterFrames2.stringValue doubleValue];
    time = [textFieldTime2.stringValue doubleValue];
    
    trueTime = (time + (frames / 24) + (quarterFrames / 96));
    
    beatsTimesMinute = (beats * 60);
    mathBpm = (beatsTimesMinute / trueTime);
    NSString *stringFloatBpm = [[NSString alloc] initWithFormat: @"%.3f", mathBpm];
    labelBPM.stringValue = stringFloatBpm;
}

@end