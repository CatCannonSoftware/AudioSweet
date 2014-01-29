//
//  TempoConverter.h
//  Audio Sweet
//
//  Created by Jeffrey Brice on 1/13/14.
//  Copyright (c) 2014 Spacebooke Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TempoConverter : NSObject {
    IBOutlet NSTextField *textFieldTempo;
    IBOutlet NSTextField *textFieldNewTempo;
    IBOutlet NSTextField *textFieldTimeStretch;
    IBOutlet NSTextField *textFieldSemiTones;
}

@property (nonatomic) float semiToneValue;
@property (nonatomic) float timeStretchValue;

@end
