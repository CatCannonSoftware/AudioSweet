//
//  FrequencyConverter.h
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/13/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FrequencyConverter : NSObject {
    IBOutlet NSPopUpButton *btnDropdownNote;
    IBOutlet NSPopUpButton *btnDropdownAccidental;
    IBOutlet NSPopUpButton *btnDropdownOctave;
    IBOutlet NSPopUpButton *btnDropdownTuningStandard;
    IBOutlet NSTextField *textFieldFrequency;
    IBOutlet NSTextField *textFieldPeriod;
    IBOutlet NSTextField *textFieldMidiNumber;
    IBOutlet NSButton *btnCalculate;
    IBOutlet NSButton *btnReset;
}

@property (nonatomic) float frequency;
@property (nonatomic) float period;
@property (nonatomic) float midiNumber;
@property (nonatomic) float intNote;
@property (nonatomic) float tuningStandard;
@property (nonatomic) NSString* formattedPeriod;
@property (nonatomic) NSString* formattedFrequency;
@property (nonatomic) NSString* formattedMidi;


@end
