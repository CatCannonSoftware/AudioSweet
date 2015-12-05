//
//  SystemScripts.m
//  Audio Sweet
//
//  Created by Jeffrey Brice on 10/19/15.
//  Copyright (c) 2015 Spacebooke Games. All rights reserved.
//

#import "SystemScripts.h"

@implementation SystemScripts

-(IBAction)systemPurge:(id)sender {
    AuthorizationRef auth = NULL;
    OSStatus err = AuthorizationCreate(NULL, kAuthorizationEmptyEnvironment, kAuthorizationFlagInteractionAllowed, &auth);
    err = AuthorizationExecuteWithPrivileges(auth, command, kAuthorizationFlagDefaults, args, NULL);
    
    NSTask *purge = [[NSTask alloc] init];
    purge.launchPath = @"/usr/sbin/purge";
    purge.arguments = @[@"sudo"];
    
    [purge setArguments:args];
    
    [purge launch];
    NSAlert *alert = [[NSAlert alloc] init];
    alert.messageText = @"RAM and Disk Cache Purged";
    [alert runModal];
}

@end
