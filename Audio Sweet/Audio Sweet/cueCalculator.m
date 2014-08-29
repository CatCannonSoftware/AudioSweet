//
//  cueCalculator.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 8/25/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "cueCalculator.h"

@implementation cueCalculator

@synthesize beats, mathBpm, beatsTimesMinute, bpmTimesTime, time;

-(IBAction)calculateTime:(id)sender {
    beats = [textFieldBeats.stringValue doubleValue];
    mathBpm = [textFieldBPM.stringValue doubleValue];
    
    beatsTimesMinute = ((beats) * 60);
    time = (beatsTimesMinute / mathBpm);
    NSString *stringFloatTime = [[NSString alloc] initWithFormat: @"%.3ff", time];
    labelTime.stringValue = stringFloatTime;
}

-(IBAction)calculateBeats:(id)sender {
    mathBpm = [textFieldBPM2.stringValue doubleValue];
    time = [textFieldTime.stringValue doubleValue];
    
    bpmTimesTime = ((mathBpm) * time);
    beats = (bpmTimesTime / 60);
    NSString *stringFloatBeats = [[NSString alloc] initWithFormat: @"%f", beats];
    labelBeats.stringValue = stringFloatBeats;
}

-(IBAction)calculateTempo:(id)sender {
    beats = [textFieldBeats2.stringValue doubleValue];
    time = [textFieldTime2.stringValue doubleValue];
    
    beatsTimesMinute = ((beats) * 60);
    mathBpm = (beatsTimesMinute / time);
    NSString *stringFloatBpm = [[NSString alloc] initWithFormat: @"%.3f", mathBpm];
    labelBPM.stringValue = stringFloatBpm;
}

@end