//
//  FrequencyConverter.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/13/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "FrequencyConverter.h"
#import "math.h"


@implementation FrequencyConverter

@synthesize frequency, period, midiNumber, tuningStandard, intNote;

-(void)midiNumberMath {
 //  midiNumber = 69;
    intNote = 0.0;
    switch (btnDropdownOctave.selectedTag) {
        case 0:
            break;
        case 1:
            intNote = intNote - 72.0;
            break;
        case 2:
            intNote = intNote - 60.0;
            break;
        case 3:
            intNote = intNote - 48.0;
            break;
        case 4:
            intNote = intNote - 36.0;
            break;
        case 5:
            intNote = intNote - 24.0;
            break;
        case 6:
            intNote = intNote - 12.0;
            break;
        case 7:
          //  intNote = intNote;
            break;
        case 8:
            intNote = intNote + 12.0;
            break;
        case 9:
            intNote = intNote + 24.0;
            break;
        case 10:
            intNote = intNote + 36.0;
            break;
        case 11:
            intNote = intNote + 48.0;
            break;
        default:
            break;
    }
    switch (btnDropdownAccidental.selectedTag) {
        case 1:
            intNote = intNote + 1.0;
            break;
        case 2:
            intNote = intNote - 1.0;
            break;
        case 3:
            break;
        default:
            break;
    }
    switch (btnDropdownNote.selectedTag) {
        case 1:
            break;
        case 2:
            intNote = intNote + 2.0;
            break;
        case 3:
            intNote = intNote + 3.0;
            break;
        case 4:
            intNote = intNote + 5.0;
            break;
        case 5:
            intNote = intNote + 7.0;
            break;
        case 6:
            intNote = intNote + 8.0;
            break;
        case 7:
            intNote = intNote + 10.0;
            break;
        default:
            break;
    }
    midiNumber = 69.0 + intNote;
}

-(void)tuningStandardMath {
    switch (btnDropdownTuningStandard.selectedTag) {
        case 1:
            tuningStandard = 440.0;
            break;
        case 2:
            tuningStandard = 380.0;
            break;
        case 3:
            tuningStandard = 480.0;
            break;
        case 4:
            tuningStandard = 422.5;
            break;
        case 5:
            tuningStandard = 409.0;
            break;
        case 6:
            tuningStandard = 423.2;
            break;
        case 7:
            tuningStandard = 435.0;
            break;
        case 8:
            tuningStandard = 430.54;
            break;
        case 9:
            tuningStandard = 432.0;
            break;
        case 10:
            tuningStandard = 452.0;
            break;
        case 11:
            tuningStandard = 439.0;
            break;
        case 12:
            tuningStandard = 435.5;
            break;
        case 13:
            tuningStandard = 442.0;
            break;
        case 14:
            tuningStandard = 443.0;
            break;
        case 15:
            tuningStandard = 415.0;
            break;
        case 16:
            tuningStandard = 451.0;
            break;
        default:
            break;
    }
}

-(IBAction)frequencyCalculate:(NSButton *)sender {
    [self tuningStandardMath];
    [self midiNumberMath];
    float freqMid = powf(2.0, ((midiNumber - 69.0)/12.0));
    frequency = freqMid * tuningStandard;
    period = ((1.0/frequency) * (powf(10.0, 3.0)));
    _formattedFrequency = [NSString stringWithFormat:@"%.02f", frequency];
    _formattedPeriod = [NSString stringWithFormat:@"%.02f", period];
    _formattedMidi = [NSString stringWithFormat:@"%.00f", midiNumber];
    
    textFieldFrequency.stringValue = _formattedFrequency;
    textFieldMidiNumber.stringValue = _formattedMidi;
    textFieldPeriod.stringValue = _formattedPeriod;
}

-(IBAction)resetFields:(NSButton *)sender {
    textFieldFrequency.stringValue = @"";
    textFieldMidiNumber.stringValue = @"";
    textFieldPeriod.stringValue = @"";
}

@end
