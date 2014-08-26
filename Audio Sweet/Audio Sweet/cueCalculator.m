//
//  cueCalculator.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 8/25/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "cueCalculator.h"

@implementation cueCalculator

@synthesize beats, mathBpm, time, beatsTimesMinute;

-(IBAction)calculateTime:(id)sender {
    *beats = [textFieldBeats.stringValue doubleValue];
    *mathBpm = [textFieldBPM.stringValue doubleValue];
    
    *beatsTimesMinute = ((*mathBpm) * 60);
    *time = (*beatsTimesMinute / *mathBpm);
    NSString *stringFloatTime = [[NSString alloc] initWithFormat: @"%.0f", *time];
    labelTime.stringValue = stringFloatTime;
}

@end