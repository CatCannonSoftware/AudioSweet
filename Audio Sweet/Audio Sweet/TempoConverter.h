//
//  TempoConverter.h
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/13/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TempoConverter : NSObject
@property (weak) IBOutlet NSTextField *textFieldTempo;
@property (weak) IBOutlet NSTextField *textFieldNewTempo;
@property (weak) IBOutlet NSTextField *textFieldTimeStretch;
@property (weak) IBOutlet NSTextField *textFieldSemiTones;
@property (nonatomic) float semiToneValue;
@property (nonatomic) float timeStretchValue;

@end
