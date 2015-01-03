//
//  DelayCalculator.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/13/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import "DelayCalculator.h"

@implementation DelayCalculator

@synthesize tempo, ms, msDot, msFifth, msTriple, tripleVal, fiveVal, blank, whole, half, quarter, eighth, sixteenth, thirtySecond, sixtyFourth;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

}

-(void)tempoMath {
    NSString *convertResult = [[NSString alloc] initWithFormat: @"%.0f", ms];
    NSString *convertResult3 = [[NSString alloc] initWithFormat: @"%.0f", msTriple];
    NSString *convertResult5 = [[NSString alloc] initWithFormat: @"%.0f", msFifth];
    NSString *convertResultDot = [[NSString alloc] initWithFormat: @"%.0f", msDot];
    calcResult.stringValue = convertResult;
    calcResult3.stringValue = convertResult3;
    calcResult5.stringValue = convertResult5;
    calcResultDot.stringValue = convertResultDot;
}

- (IBAction)clearFields:(id)sender {
    calcResult.stringValue = @"";
    calcResult3.stringValue = @"";
    calcResult5.stringValue = @"";
    calcResultDot.stringValue = @"";
    tempoTextBox.stringValue = @"";
    [regularNote setImage:(NSImage *)@"blank.png"];
}

- (IBAction)tempoConvert:(id)sender {
    tempo = [tempoTextBox.stringValue doubleValue];
    ms = floor(60000 / tempo);
    
    if (tempo == 0) {
        NSAlert *missingFieldError = [NSAlert alertWithMessageText:@"No Tempo was supplied." defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@"Please supply a Tempo."];
        [missingFieldError runModal];
    }
    
    else if (tempo > 0 || tempo < 600001){
        switch ([noteValues selectedSegment])
        {
            case 0:
                ms = (ms * 4);
                [regularNote setImage:whole];
                break;
            case 1:
                ms = (ms * 2);
                [regularNote setImage:half];
                break;
            case 2:
                ms = (ms * 1);
                [regularNote setImage:quarter];
                break;
            case 3:
                ms = (ms / 2);
                [regularNote setImage:eighth];
                break;
            case 4:
                ms = (ms / 4);
                [regularNote setImage:sixteenth];
                break;
            case 5:
                ms = (ms / 8);
                [regularNote setImage:thirtySecond];
                break;
            case 6:
                ms = (ms / 16);
                [regularNote setImage:sixtyFourth];
                break;
            default:
                break;
        }
        msTriple = floor(ms / 3);
        msFifth = floor(ms / 5);
        msDot = floor(ms * 1.5);
        [self tempoMath];
    }
}


@end
