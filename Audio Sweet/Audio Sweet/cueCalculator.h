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
    IBOutlet NSTextField *textFieldBeats;
    IBOutlet NSTextField *textFieldBeats2;
    IBOutlet NSTextField *labelTime;
    IBOutlet NSTextField *labelBeats;
    IBOutlet NSTextField *labelBPM;
}

@property (nonatomic) double mathBpm;
@property (nonatomic) double beats;
@property (nonatomic) double time;
@property (nonatomic) double beatsTimesMinute;
@property (nonatomic) double bpmTimesTime;

@end
