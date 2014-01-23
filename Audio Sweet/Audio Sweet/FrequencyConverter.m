//
//  FrequencyConverter.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/13/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "FrequencyConverter.h"
#include "math.h"


@implementation FrequencyConverter
@synthesize frequency, period, midiNumber, tuningStandard;

-(void)midiNumberMath {
    midiNumber = 69;
    int intNote = 0;
    switch (_btnDropdownOctave.selectedTag) {
        case 1:
            intNote = intNote - 72;
            break;
        case 2:
            intNote = intNote - 60;
            break;
        case 3:
            intNote = intNote - 48;
            break;
        case 4:
            intNote = intNote - 36;
            break;
        case 5:
            intNote = intNote - 24;
            break;
        case 6:
            intNote = intNote - 12;
            break;
        case 7:
            intNote = intNote;
            break;
        case 8:
            intNote = intNote + 12;
            break;
        case 9:
            intNote = intNote + 24;
            break;
        case 10:
            intNote = intNote + 36;
            break;
        case 11:
            intNote = intNote + 48;
            break;
        default:
            intNote = intNote;
            break;
    }
    switch (_btnDropdownAccidental.selectedTag) {
        case 1:
            intNote = intNote + 1;
            break;
        case 2:
            intNote = intNote - 1;
            break;
        case 3:
            intNote = intNote;
            break;
        default:
            intNote = intNote;
            break;
    }
    switch (_btnDropdownNote.selectedTag) {
        case 1:
            intNote = intNote;
            break;
        case 2:
            intNote = intNote + 2;
            break;
        case 3:
            intNote = intNote + 3;
            break;
        case 4:
            intNote = intNote + 5;
            break;
        case 5:
            intNote = intNote + 7;
            break;
        case 6:
            intNote = intNote + 8;
            break;
        case 7:
            intNote = intNote + 10;
            break;
        default:
            intNote = intNote;
            break;
    }
    midiNumber = 69 + intNote;
}

-(void)tuningStandardMath {
    switch (_btnDropdownTuningStandard.selectedTag) {
        case 1:
            tuningStandard = 440;
            break;
        case 2:
            tuningStandard = 380;
            break;
        case 3:
            tuningStandard = 480;
            break;
        case 4:
            tuningStandard = 422.5;
            break;
        case 5:
            tuningStandard = 409;
            break;
        case 6:
            tuningStandard = 423.2;
            break;
        case 7:
            tuningStandard = 435;
            break;
        case 8:
            tuningStandard = 430.54;
            break;
        case 9:
            tuningStandard = 432;
            break;
        case 10:
            tuningStandard = 452;
            break;
        case 11:
            tuningStandard = 439;
            break;
        case 12:
            tuningStandard = 435.5;
            break;
        case 13:
            tuningStandard = 442;
            break;
        case 14:
            tuningStandard = 443;
            break;
        case 15:
            tuningStandard = 415;
            break;
        case 16:
            tuningStandard = 451;
            break;
        default:
            tuningStandard = 440;
            break;
    }
}

-(void)frequencyMath {
    [self tuningStandardMath];
    [self midiNumberMath];
    float y = ((midiNumber-69)/12);
    frequency = pow(2, y) * (tuningStandard);
    period = (1/frequency) * pow(10, 3);
    _formattedPeriod = [NSString stringWithFormat:@"%.02f", period];
}

-(IBAction)frequencyCalculate:(NSButton *)sender {
    [self frequencyMath];
    _textFieldFrequency.floatValue = frequency;
    _textFieldMidiNumber.intValue = midiNumber;
    _textFieldPeriod.stringValue = _formattedPeriod;
}

-(IBAction)resetFields:(NSButton *)sender {
    _textFieldFrequency.floatValue = 0;
    _textFieldMidiNumber.intValue = 0;
    _textFieldPeriod.stringValue = nil;
}

@end
