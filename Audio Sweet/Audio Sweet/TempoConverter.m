//
//  TempoConverter.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/13/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "TempoConverter.h"
#include "math.h"

@implementation TempoConverter
@synthesize semiToneValue, timeStretchValue;

-(void)tempoMath {
    float tempo = 0.0;
    float newTempo = 0.0;
    float percentage = 0.0;
    float changeInTempo = 0.0;
    tempo = _textFieldTempo.intValue;
    newTempo = _textFieldNewTempo.intValue;
    changeInTempo = newTempo / tempo;
    percentage = ((tempo/4) / (newTempo/4)) * 100;
    timeStretchValue = percentage;
    // Fix this
    semiToneValue = -(log(changeInTempo))/(log(2)) * (-12);
}

-(IBAction)calculateTempo:(NSButton *)sender {
    [self tempoMath];
    NSString *semiToneString = [NSString stringWithFormat:(NSString *)@"%.02f semitones", semiToneValue];
    NSString *timeStretchString = [NSString stringWithFormat:(NSString *)@"%.02f%%", timeStretchValue];
    _textFieldSemiTones.stringValue = semiToneString;
    _textFieldTimeStretch.stringValue = timeStretchString;
}

-(IBAction)resetTempo:(NSButton *)sender {
    _textFieldNewTempo.intValue = 0;
    _textFieldTempo.intValue = 0;
    _textFieldSemiTones.floatValue = 0;
    
    _textFieldTimeStretch.floatValue = 0;
}

@end
