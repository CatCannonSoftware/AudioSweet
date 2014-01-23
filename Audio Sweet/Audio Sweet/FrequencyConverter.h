//
//  FrequencyConverter.h
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/13/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FrequencyConverter : NSObject
@property (weak) IBOutlet NSPopUpButton *btnDropdownNote;
@property (weak) IBOutlet NSPopUpButton *btnDropdownAccidental;
@property (weak) IBOutlet NSPopUpButton *btnDropdownOctave;
@property (weak) IBOutlet NSPopUpButton *btnDropdownTuningStandard;
@property (weak) IBOutlet NSTextField *textFieldFrequency;
@property (weak) IBOutlet NSTextField *textFieldPeriod;
@property (weak) IBOutlet NSTextField *textFieldMidiNumber;
@property (weak) IBOutlet NSButton *btnCalculate;
@property (weak) IBOutlet NSButton *btnReset;

@property (nonatomic) float frequency;
@property (nonatomic) float period;
@property (nonatomic) int midiNumber;
@property (nonatomic) float tuningStandard;
@property (nonatomic) NSString* formattedPeriod;

@end
